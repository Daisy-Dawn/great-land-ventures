<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\CryptoAccount;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Http;
use Illuminate\Http\Client\Pool;
use App\Models\SettingsCont;
use App\Models\Settings;
use App\Models\User;
use Illuminate\Support\Facades\DB;

class ExchangeController extends Controller
{
    //
    public function assetview(){
        $settings = SettingsCont::where('id', '1')->first();
        if ($settings->use_crypto_feature == 'false') {
            abort(404);
        }

        return view('user.asset',[
            'title' =>  'Exchange currency',
            'cbalance' => CryptoAccount::where('user_id', Auth::user()->id)->first(),
        ]);
    }

    public function getprice($base, $quote, $amount){

        $settings = SettingsCont::where('id', '1')->first();
        $pluscharge = $amount * $settings->fee/100;
        $amout_to = $amount - $pluscharge;

        if ($quote == "usd") {
            $assetbase = $base.'usd';
            $dollar = Http::get("https://api.brynamics.com/api/current-market-price/$assetbase")["0"]["Price"];
            $mainbal = $amout_to * $dollar;
            $prices = round($mainbal,8);
        }
        elseif ($base == "usd") {
            $assetbase = $quote.'usd';
            $dollar = Http::get("https://api.brynamics.com/api/current-market-price/$assetbase")["0"]["Price"];
            $mainbal = $amout_to / $dollar;
            $prices = round($mainbal,8);
        }elseif ($quote == "usdt") {
            $assetbase = $base.'usd';
            $dollar = Http::get("https://api.brynamics.com/api/current-market-price/$assetbase")["0"]["Price"];
            $mainbal = $amout_to * $dollar;
            $prices = round($mainbal,8);
        }elseif ($base == "usdt") {
            $assetbase = $quote.'usd';
            $dollar = Http::get("https://api.brynamics.com/api/current-market-price/$assetbase")["0"]["Price"];
            $mainbal = $amout_to / $dollar;
            $prices = round($mainbal,8);
        }elseif ($base !== "usd" && $quote !== "usd") {
            $assetbase = $base.'usd';
            $assetquote = $quote.'usd';
            $rate1 = Http::get("https://api.brynamics.com/api/current-market-price/$assetbase")["0"]["Price"];
            $rate2 = Http::get("https://api.brynamics.com/api/current-market-price/$assetquote")["0"]["Price"];
            $real_rate = $rate1/$rate2;
            $mainbal = $amout_to * $real_rate;
            $prices = round($mainbal,8);
        }
        if (($base == "usd" && $quote == "usdt") or ($base == "usdt" && $quote == "usd")) {
            $prices = $amout_to;
        }

        return response()->json(['status'=> 200, 'data' => $prices]);
    }


    public function exchange(Request $request){
        $cryptobalances = CryptoAccount::where('user_id', Auth::user()->id)->first();
        $dest = $cryptobalances->$request->destination;
        $cryptosc = $cryptobalances->$request->source;
        $acntbal = Auth::user()->account_bal;
        $src = $request->source;
        $cdest = $request->destination;
        $user = Auth::user();

        if ($request->source == 'usd') {
            if ($acntbal < $request->amount) {
                return response()->json(['status'=> 201, 'message' => 'Insuficient fund in your source account']);  
            }

            User::where('id', Auth::user()->id)->update([
                'account_bal' => $acntbal - $request->amount,
            ]);

            

            DB::table('crypto_accounts')
            ->where('user_id', $user->id)
            ->update([
                $request->destination => $dest + $request->quantity,
            ]);

            return response()->json(['status'=> 200, 'success' => 'Exchange Successful, Refreshing your Balances']);  

        }

        if($request->source != 'usd' and  $request->destination != 'usd') {
            
            if ($cryptobalances->$src < $request->amount) {
                return response()->json(['status'=> 201, 'message' => 'Insuficient fund in your source account']);  
            }

            DB::table('crypto_accounts')
            ->where('user_id', $user->id)
            ->update([
                $request->source => $cryptobalances->$src - $request->amount,
                $request->destination => $cryptobalances->cdest + $request->quantity,
            ]);

            return response()->json(['status'=> 200, 'success' => 'Exchange Successful, Refreshing your Balances']);  
            
        }

        if($request->source != 'usd' and  $request->destination == 'usd') {

            if ($cryptobalances->$src < $request->amount) {
                return response()->json(['status'=> 201, 'message' => 'Insuficient fund in your source account']);
            }

            DB::table('crypto_accounts')
            ->where('user_id', $user->id)
            ->update([
                $request->source => $cryptobalances->$src - $request->amount,
            ]);

            User::where('id', Auth::user()->id)->update([
                'account_bal' => $acntbal + $request->quantity,
            ]);

            return response()->json(['status'=> 200, 'success' => 'Exchange Successful, Refreshing your Balances']);  
            
        }
    }

    public function getBalance($coin){
        $settings = Settings::where('id', '1')->first();
        $settingss = SettingsCont::where('id', '1')->first();
        $user = Auth::user();
        $acntbals = DB::table('crypto_accounts')->where('user_id', $user->id)->first();
       
        if (empty($acntbals->$coin)) {
            $balanc = 0;
        }else {
            $balanc = $acntbals->$coin;
        }

        $assetbase = $coin.'usd';
        $dollar = Http::get("https://api.brynamics.com/api/current-market-price/$assetbase")["0"]["Price"];
        $mainbal = $balanc * $dollar;

        if ($settings->s_currency == 'USD'){
            $price = number_format(round($mainbal));
        }else {
            if (empty($settingss->currency_rate)) {
                $rate = 1;
            } else {
                $rate = $settingss->currency_rate;
            }
            
            $othercurr = $mainbal * $rate;
            $price = number_format(round($othercurr));
        }
        
        
        return response()->json([
           'data' => $price,
           'status' => 200
        ]);
    }
}
