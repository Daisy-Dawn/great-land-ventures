@extends('layouts.base')
@inject('content', 'App\Http\Controllers\FrontController')
@section('title', 'About Us')


@section('content')
<!-- =============================Wrapper========================================================== -->
<section class="wrapper">

<!-- this is the top area with image and large write up for the about page  -->
<div class="abt-lp">
  <h1 class="about-main-title">
  " We make trading available for everybody"
  </h1>

</div>
<!-- ===================================About us section ========================= -->

<section class = "container p-20">
  <div class = "row"> 
    <div class = "col-md-6 col-sm-12"> 
      <div class = "abt-building">  
        <img  src = "{{$settings->site_address}}/public/images/about/about-building.jpg">
      </div>
      <!-- --- --- ---  - -->
      <div class = "p-20"> </div>

      <div class = "abt-us-write">
        
        <h1 class = "heading-about">  
          <span> About </span>  
        </h1>

        <br />

          <span class = "lite-ash"> 
            {{$settings->site_name}} is founded with vision to create 100% transparent digital trading experience for its clients.
          </span>

          <br />
          <br />

          <span class = "lite-ash"> 
            We provide easy to use trading platform and spend lots of time providing education for our customers. 
          </span>

          <br /> 
          <br /> 


          <span class = "lite-ash"> 
             Our company is interested in successful and prosperous traders who will create high trading volume. 
             We are proud that we helped many customers to make revenue.
          </span>


      </div>
      <!-- end -->

    </div>
    <!-- ===========================end ========================= -->
    <div class = "col-md-6 col-sm-12">
      <div class = "abt-us-write"> 
        <h1 class = "our-value">  
          <span> Our values </span> 
          <div class = "p-20"> </div>
        </h1>
          
          <span class = "abt-number"> 01 </span> 
          
          <span class = " lite-ash abt-us-2">
            <b class = "white"> Clients:</b> 
             Providing best customer service is our primary value. More than 100 account managers are focused on needs of our clients
          </span>


         <div class = "p-20"> </div>

          <span class = "abt-number"> 02 </span> 
          
          <span class = " lite-ash abt-us-2">
            <b class = "white"> Reliability:</b> 
             Being industry leader we provide our clients with extra solidity. We are doing more than anyone else to satisfy needs of our clients. 
          </span>

          <div class = "p-20"> </div>

          <span class = "abt-number" style ="line-height: 125px;"> 03 </span> 
          
          <span class = " lite-ash abt-us-2">
            <b class = "white"> Simplicity:</b> 
            Everybody can become a trader with our easiest to use trading platform. ExpertOption is available on all modern platforms: Web, Windows, MacOS, iPhone, iPad and Android.
          </span>


            <div class = "p-20"> </div>

          <span class = "abt-number"> 04 </span> 
          
          <span class = " lite-ash abt-us-2">
            <b class = "white"> Speed:</b> 
            We provide fastest trading using cutting-edge technologies. No delays in order executions and lags in user interface.
          </span>

      </div> 


    </div>

  </div>
  <!-- end row================================== -->
</section>

<div class="col-md-8 col-sm-12" style="margin: 40px auto 20px auto;">
  <br />
  <h1 class="text-center "> <b> About Our Company </b></h1>
  <br />
  <p class="t-p text-center"> {{$settings->site_name}} is an Optimal Wealth Management Company with emphasis on Wealth Management, Wealth Creation, Trades and Digital Assets usage. We offer various insured services capable of generating and returning good profit yield on crypto assets in the Blockchain through trading on a wide range of Instrument Categories. 
  {{$settings->site_name}} has qualified financiers/traders that manage and provide financial consulting services to her investors. We pride ourselves with a world class professional customer service, unique trading strategies, optimum transparency and fidelity. Funds Invested with 
  {{$settings->site_name}} can with Withdrawn, Transfered or Reinvested at will.</p>
  
</div> 
<div class="clear-fix"></div>
<!-- ========================================the two column section ============================= -->



<section class="col-md-12 col-sm-12">
  <div class="cert">
   
  </div>
  
</section>
<!-- ====================================== our missiong and vision section =========================== -->
<div class="container">
  <div class="row">

    <div class="col-md-4 col-sm-12">
      <h4> 
          <img src="{{$settings->site_address}}/public/images/about/icons/icon-vanuatu.svg" alt="{{$settings->site_name}} Multiplatform">
        Multiplatform 
      </h4>

      <p class = "lite-ash">Our trading platform is available on all devices</p>            
              
    </div>
    <!-- ================================================ --> 

    <div class="col-md-4 col-sm-12">
      <h4> 
          <img src="{{$settings->site_address}}/public/images/about/icons/icon-vfrs-bit.svg" alt="{{$settings->site_name}} Security standards ">
        Security standards 
      </h4>

      <p class = "lite-ash">Verified by Visa and MasterCard
      All data is encrypted with strongest cryptographic algorithm</p>            
              
    </div>
     <!-- ================================================ --> 
     
      <div class="col-md-4 col-sm-12">
      <h4> 
          <img src="{{$settings->site_address}}/public/images/about/icons/icon-lock.svg" alt="{{$settings->site_name}} Accurate quotes">
        Accurate quotes 
      </h4>

      <p class = "lite-ash"> Real-time market data provided by leading analytical agencies </p>            
              
    </div>
    <!-- ================================================ --> 
    
  </div>
  
</div>



<!-- ==============================values======================== -->
<div class="container-fluid">
  <div class="row" >
    <div class="col-md-6 col-sm-12" style="padding: 5em">
       &nbsp;<!-- Button trigger modal --><!-- Modal --><div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Broker Licence</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <img src="{{$settings->site_address}}/public/images/certificate.png" alt="certificate">
              </div>
              
            </div>
          </div>
        </div>
    </div>

    <!-- start fo the right column -->
    <div class="col-md-6 col-sm-12" style="padding: 60px; ">
      <h3> <i class="fab fa-artstation" style="color:#52afee;"></i> <b> Client oriented </b></h3>
         <p class="t-p"> We serve as if we are serving ourselves, we value the feedback and use it to improve our work.</p>
        <br />

        <h3> <i class="fab fa-artstation" style="color:#52afee;"></i><b> Good RIO Oriented</b></h3>
         <p class="t-p"> We carefully chose the best and most profitable trading methods to get amazing results.</p>
        <br />

        <h3><i class="fab fa-artstation" style="color:#52afee;"></i> <b> Expansion / Growth </b></h3>
         <p class="t-p"> We make ourselves known in the community; we create long term relations, while constantly expanding. Therefore, we are always bringing in more people to work for us.</p>
        <br />
       
      
    </div>
    
  </div> <!-- end row -->
  
</div>

</section> <!-- end wrapper -->

@endsection