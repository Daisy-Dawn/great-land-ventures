<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Settings;
use App\Models\Tp_Transaction;
use App\Mail\NewNotification;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class TransferController extends Controller
{
    //
    public function transfertouser(Request $request){

        $receiver = User::where('email', $request->email)->first();
        $sender = Auth::user();

        if (!Hash::check($request->password, $sender->password)) {
            return response()->json([
                'status' => 419,
                'message' => 'Incorrect Password',
            ]);
        }

        if($request->email == $sender->email){
            return response()->json([
                'status' => 419,
                'message' => 'You cannot send funds to yourself',
            ]);
           
        }
        if(!$receiver){
            return response()->json([
                'status' => 419,
                'message' => 'No user with this email address exist',
            ]);
        }

        if ($sender->account_bal < $request->amount) {
            return response()->json([
                'status' => 419,
                'message' => 'Insufficient Funds',
            ]);
        }

        $user = User::find(Auth::user()->id);
        $user->account_bal = $sender->account_bal - $request->amount;
        $user->save();

        User::where('email', $request->email)->update([
            'account_bal' => $receiver->account_bal + $request->amount,
        ]);

         //create history
         Tp_Transaction::create([
            'user' => $sender->id,
            'plan' => "Transfered to $receiver->name",
            'amount'=> $request->amount,
            'type'=>"Fund Transfer",
        ]);

         //create history for receiver
         Tp_Transaction::create([
            'user' => $receiver->id,
            'plan' => "Received from $sender->name",
            'amount'=> $request->amount,
            'type'=>"Fund Transfer",
        ]);

        return response()->json([
            'status' => 200,
            'message' => 'Transfer Completed, Refreshing page',
        ]);

        //return redirect()->back()->with('success', 'Transfer Successful');

    }
}
