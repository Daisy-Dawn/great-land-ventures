<?php

namespace App\Http\Controllers\User;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\User;
use App\Models\Settings;
use App\Models\Plans;
use App\Models\Agent;
use App\Models\User_plans;
use App\Models\Admin;
use App\Models\Faq;
use App\Models\Images;
use App\Models\Testimony;
use App\Models\Content;
use App\Models\Asset;
use App\Models\Mt4Details;
use App\Models\Deposit;
use App\Models\Notification;
use App\Models\Wdmethod;
use App\Models\Withdrawal;
use App\Models\Cp_transaction;
use App\Models\Tp_Transaction;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\Mail\NewNotification;
use App\Mail\UserUpload;
use App\Mail\KycUpload;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Storage;
use App\Http\Traits\CPTrait;

class ViewsController extends Controller
{


    public function dashboard(Request $request){
        
        $settings=Settings::where('id','1')->first();
        
        //Check if the user is referred by someone after a successful registration
        $settings=Settings::where('id','1')->first();
        //check for users without ref link and update them with it
        $usf=User::all();
        foreach($usf as $usf){
            //if the ref_link column is empty
            if($usf->ref_link==''){
                User::where('id', $usf->id)
                ->update([
                    'ref_link' => $settings->site_address.'/ref/'.$usf->username,
                    'ref_bonus' => '0',
                    'bonus_released' => '0',
                ]);
            }
            //give reg bonus if new
            if($usf->created_at->diffInDays() < 2 && $usf->signup_bonus!="received"){
                User::where('id', $usf->id)
                ->update([
                    'bonus' =>$usf->bonus + $settings->signup_bonus,
                    'account_bal' => $usf->account_bal + $settings->signup_bonus,
                    'signup_bonus' => "received",
                ]);

                if ($settings->signup_bonus > 0 and !empty($settings->signup_bonus)) {
                    //create history
                    Tp_Transaction::create([
                        'user' => Auth::user()->id,
                        'plan' => "SignUp Bonus",
                        'amount'=>$settings->signup_bonus,
                        'type'=>"Bonus",
                    ]); 
                }
                
            }
        } 
          
        //sum total deposited
        $total_deposited = DB::table('deposits')->select(DB::raw("SUM(amount) as count"))->where('user', Auth::user()->id)->
        where('status','Processed')->get();

        $total_withdrawal = DB::table('withdrawals')->select(DB::raw("SUM(amount) as count"))->where('user', Auth::user()->id)->
        where('status','Processed')->get();
        
        //count the number of plans users have purchased
        $user_plan = User_plans::where('user', Auth::user()->id)->get();
        $user_plan_active = User_plans::where([
                    ['user', '=', Auth::user()->id],
                    ['active', '=', 'yes']
                ])->get();
        
        //log user out if not active
        if(Auth::user()->status != "active"){
            $request->session()->flush();
            $request->session()->put('reged','yes');
            return redirect()->route('dashboard');
        }
        
        return view('user.dashboard' ,[
            'title'=>'User Account Dashboard',
            'deposited' => $total_deposited,
            'total_withdrawal' => $total_withdrawal,
            'user_plan' => $user_plan,
            'user_plan_active'=> $user_plan_active,
            
        ]);
    }  

    //Profile route
    public function profile(){
        $userinfo = User::where('id',Auth::user()->id)->first();
        return view('user.profile')->with(array(
            'userinfo' => $userinfo,
            'title' => 'Profile',
        ));
    }

    //return add withdrawal account form view
    public function accountdetails(){
        return view('user.updateacct')->with(array(
          'title' => 'Update account details',
        ));
    }

    //Notification page view
    public function notification(){
        return view('user.notification', [
            'Notif' => Notification::where('user_id',Auth::user()->id)->orderBy('id', 'desc')->paginate(12),
            'title' => 'Notification',
        ]);
    }

    //support route
    public function support()
    {
    	return view('user.support')
        ->with(array(
            'title'=>'Support',
        ));
    }

    //Trading history route
    public function tradinghistory(){
        return view('user.thistory')
        ->with(array(
          't_history' => Tp_Transaction::where('user',Auth::user()->id)
          ->where('type','ROI')
          ->orderBy('id', 'desc')
          ->get(),
          'title' => 'Trading History',
        ));
    }

    //Account transactions history route
    public function accounthistory(){
        return view('user.transactions')
        ->with(array(
          't_history' => Tp_Transaction::where('user',Auth::user()->id)
          ->where('type','<>','ROI')
          ->orderByDesc('id')
          ->get(),

          'withdrawals' => Withdrawal::where('user', Auth::user()->id)->orderBy('id', 'desc')
          ->get(),
          'deposits' => Deposit::where('user', Auth::user()->id)->orderBy('id', 'desc')
          ->get(),
          'title' => 'Account Transactions History',
          
        ));
    }

    //Return deposit route
    public function deposits()
    {
        $paymethod = Wdmethod::where(function($query) {
            $query->where('type','=','deposit')
            ->orWhere('type','=','both');
        })->where('status', 'enabled')->orderByDesc('id')->get();
            
    	return view('user.deposits')
        ->with(array(
            'title'=>'Fund your account',
            'dmethods' => $paymethod,
            'deposits' => Deposit::where(['user'=>Auth::user()->id])
            ->orderBy('id', 'desc')
            ->get(),
        ));
    } 

     //Return withdrawals route
    public function withdrawals()
    {
        $withdrawals =  Wdmethod::where(function($query) {
            $query->where('type','=','withdrawal')
            ->orWhere('type','=','both');
        })->where('status', 'enabled')->orderByDesc('id')->get();

        return view('user.withdrawals')
            ->with(array(
            'title'=>'Withdraw Your funds',
            'wmethods' => $withdrawals,
        ));
    }

    public function transferview()
    {
        return view('user.transfer', [
            'title'=>'Send funds to a friend',
        ]);
    }
     
    //Subscription Trading 
    public function subtrade(Request $request)
    {
        $settings = Settings::where('id', 1)->first();

        if($settings->subscription_service != 'on'){
            abort(404);
        }
        return view('user.subtrade')
        ->with(array(
            'title'=>'Subscription Trade',
            'subscriptions' => Mt4Details::where('client_id', auth::user()->id)->orderBy('id', 'desc')->get(),
            
        ));
    } 
     
    
    //Main Plans route
    public function mplans()
    {
    	return view('user.mplans')
        ->with(array(
            'title'=>'Main Plans',
            'plans'=> Plans::where('type', 'main')->get(),
            'settings' => Settings::where('id','1')->first(),
        ));
    }
    
    //My Plans route
    public function myplans()
    {
        $plans=User_plans::where('user', Auth::user()->id)->get();
        if(count($plans)<1){
            return redirect()->back()->with('message','You do not have a package at the moment');
        }
    	return view('user.myplans')
        ->with(array(
            'title'=>'Your packages',
            'plans'=> User_plans::where('user', Auth::user()->id)->get(),
            'cplan'=> User_plans::where('id', Auth::user()->user_plan)->first(),
            'settings' => Settings::where('id','1')->first(),
        ));
    }

    function twofa() {
        return view('profile.show', [
            'title' => 'Advance Security Settings',
        ]);
    }

    // Referral Page
    public function referuser(){
        return view('user.referuser', [
            'title'=>'Refer user',
        ]);
    }

    function verifyaccount() {
        return view('user.verify', [
          'title' => 'Verify your Account',
        ]);
    }
     
























}
