<?php

namespace App\Actions\Fortify;

use App\Models\User;
use App\Models\Settings;
use App\Models\Agent;
use App\Models\CryptoAccount;
use Illuminate\Http\Request;
use App\Models\Notification;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Laravel\Fortify\Contracts\CreatesNewUsers;
use Laravel\Jetstream\Jetstream;
use Illuminate\Support\Facades\DB;
use App\Mail\NewNotification;
use App\Mail\NewRegistration;
use Illuminate\Support\Facades\Mail;
use Carbon\Carbon;

class CreateNewUser implements CreatesNewUsers
{
    use PasswordValidationRules;

    /**
     * Validate and create a newly registered user.
     *
     * @param  array  $input
     * @return \App\Models\User
     */
    public function create(array $input)
    {
       
        $settings=Settings::where('id','1')->first();
        $request = request();
        if ($settings1->captcha == "true") {
            Validator::make($input, [
                'name' => ['required', 'string', 'max:255'],
                'username'=> ['required', 'unique:users,username'],
                'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
                'password' => $this->passwordRules(),
                'g-recaptcha-response' => 'required|captcha',
                'terms' => Jetstream::hasTermsAndPrivacyPolicyFeature() ? ['required', 'accepted'] : '',
            ])->validate();
        } else {
            Validator::make($input, [
                'name' => ['required', 'string', 'max:255'],
                'username'=> ['required', 'unique:users,username'],
                'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
                'password' => $this->passwordRules(),
                'terms' => Jetstream::hasTermsAndPrivacyPolicyFeature() ? ['required', 'accepted'] : '',
            ])->validate();
        }
        
        
        if(session('ref_by')) {
            $ref_by = session('ref_by');
            $user= User::where('username', $ref_by)->first();
            $ref_by_id = $user->id;
        }else {
            if (!empty($input['ref_by'])) {
                $sponsor = User::where('username', $input['ref_by'])->first();
                $ref_by_id = $sponsor->id;
            }else {
                $ref_by_id = NULL;
            }
        }
        
    
          $settings=Settings::where('id', '=', '1')->first();
        //send email notification
                        $objDemo = new \stdClass();
                        $objDemo->sender = $settings->site_name;
                        $objDemo->email = $input['email'];
                        $objDemo->name = $input['name'];
                        $objDemo->password =  $input['password'];
                        $objDemo->contact_email = $settings->contact_email;
                        $objDemo->date = \Carbon\Carbon::Now();
                        $objDemo->subject = "Successful Registration";
                        Mail::to($input['email'])->send(new NewRegistration($objDemo));
                        
                        
        $user = User::create([
            'name' => $input['name'],
            'email' => $input['email'],
            'phone' => $input['phone'],
            'username'=> $input['username'],
            'country' => $input['country'],
            'ref_by' => $ref_by_id,
            'status' =>'active',
            'password' => Hash::make($input['password']),
        ]);

        $cryptoaccnt = new CryptoAccount();
        $cryptoaccnt->user_id = $user->id;
        $cryptoaccnt->save();
        
        $request->session()->forget('ref_by');
        return $user;
    }
}
