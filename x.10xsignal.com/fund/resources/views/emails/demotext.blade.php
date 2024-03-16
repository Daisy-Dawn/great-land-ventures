@component('mail::message')

# Hello, {{$demo->name}}
# Welcome to {{ $demo->sender }}!
Your registration is successful and we are really excited to welcome you to {{ $demo->sender }} community! <br><br>
Login Information:

<p style="font-size:12px">Your email is: <strong>{{ $demo->email }}</strong></p><br>
<p style="font-size:12px">Your system generated password: <strong>{{ $demo->password }}</strong></p><br>
<p style="font-size:12px">
     Make sure to keep your login details safe for future references. For safety and security, never share your login details or password with anyone.

</p><br>
As a registered trader of {{ $demo->sender }} , you can now access:
A large list of tradeable assets-Forex, Indices, Stocks and Commodities CFD and Forex trading using the MTA trading platform And Bitcoin mining.
If you need any help, do not hesitate to reach out to us at {{ $demo->contact_email }} or use the live chat in our site. <br>  <br><br>

Kind regards,<br>
{{ $demo->sender }}.
@endcomponent


