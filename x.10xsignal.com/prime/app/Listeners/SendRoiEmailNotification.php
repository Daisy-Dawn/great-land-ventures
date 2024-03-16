<?php

namespace App\Listeners;

use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use App\Events\RoiReceived;
use App\Mail\NewRoi; 
use Illuminate\Support\Facades\Mail;
use App\Models\User;
use App\Models\Settings;
use Carbon\Carbon;

class SendRoiEmailNotification
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  object  $event
     * @return void
     */
    public function handle(RoiReceived $event)
    {
         $user =  $user=User::where('id', $event->user)->first();
         $settings=Settings::where('id', 1)->first();

         $objDemo = new \stdClass();
         $objDemo->receiver_email = $user->email;
         $objDemo->receiver_plan = $dplan->name;
         $objDemo->received_amount = "$settings->currency$increment";
         $objDemo->sender = $settings->site_name;
         $objDemo->receiver_name = $user->name;
         $objDemo->date = Carbon::Now();
         Mail::to($user->email)->send(new NewRoi($objDemo));  
    }
}
