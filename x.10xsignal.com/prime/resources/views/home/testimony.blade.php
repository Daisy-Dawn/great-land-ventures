@extends('layouts.base')

@inject('content', 'App\Http\Controllers\FrontController')
@section('content')

<!-- =============================Wrapper========================================================== -->
<section class="container-fluid bg-contact-us" style="margin: 0!important">
    <div class="row">
      <div class="col-6 abt-us-txt" style="padding: 5em;">
        <h2 class="white"> TESTIMONIES</h2>
      </div>

      <div class="col-6">
        <img class="flying-man" src="{{$settings->site_address}}/public/images/testimony.svg">
      </div>
    </div>

    <!-- the body section that contain the text =============== -->
    
  </section>
   <div class="container-fluid abt-p-txt">
   <section class=" col-testimony-bg">
   <div class="container-fluid">
      <h3 class="text-center"> TESTIMONIES</h3>
      <p class="text-center">
        <i>Happy investors <span class="gold"> sharing</span> their testimonies </i> 
      </p class="text-center">

  

    </div> <!-- end of the container fluid -->

    <!-- =================================This is the strat of the video testimony section =========================== -->
   <h3 class="text-center">TESTIMONIES(VIDEOS)</h3>
    <div class="col-test-video">
      
            <div class="col-lg-3 col-md-6 col-sm-12 plan-wrap " data-aos="fade-up">
              <div class="embed-responsive embed-responsive-4by3">
                <video controls="true" class="embed-responsive-item">
                  <source src="{{$settings->site_address}}/public/video/1885.mp4" type="video/mp4">
                </video>
              </div>
            </div>
            
            <div class="col-lg-3 col-md-6 col-sm-12 plan-wrap " data-aos="fade-up" >
              <div class="embed-responsive embed-responsive-4by3">
                <video controls="true" class="embed-responsive-item">
                  <source src="{{$settings->site_address}}/public/video/3208.mp4" type="video/mp4">
                </video>
              </div>
            </div>
            
            <div class="col-lg-3 col-md-6 col-sm-12 plan-wrap " data-aos="fade-up" >
              <div class="embed-responsive embed-responsive-4by3">
                <video controls="true" class="embed-responsive-item">
                  <source src="{{$settings->site_address}}/public/video/7390.mp4" type="video/mp4">
                </video>
              </div>
            </div>
            
            <div class="col-lg-3 col-md-6 col-sm-12 plan-wrap " data-aos="fade-up" >
              <div class="embed-responsive embed-responsive-4by3">
                <video controls="true" class="embed-responsive-item">
                  <source src="{{$settings->site_address}}/public/video/9099.mp4" type="video/mp4">
                </video>
              </div>
            </div>
            
            <div class="col-lg-3 col-md-6 col-sm-12 plan-wrap " data-aos="fade-up" >
              <div class="embed-responsive embed-responsive-4by3">
                <video controls="true" class="embed-responsive-item">
                  <source src="{{$settings->site_address}}/public/video/8321.mp4" type="video/mp4">
                </video>
              </div>
            </div>
            

    </div> <!-- end row-->

       <!-- =================================This is the end of the video testimony section =========================== -->
 </section> 
 <section class="container-fluid" data-aos="fade-rigt" >
    <h3 style="text-align: center;">OUR CUSTOMER FEEDBACK</h3>

<div class="container-fluid " data-aos="fade-up">
  <div class="slider-wrapper">
  <div class="row " style="padding: 20px;">

    <div class="col-lg-3 col-md-6 col-sm-12 plan-wrap " data-aos="fade-up">
      <div class="col-plan-inner">
        <div class="col-plan-head">
            <img src="{{$settings->site_address}}/public/images/test1.png" class="heartbeat"  style="margin: centre" />
          <p> &nbsp;</p>
        </div>

        <p>{{$settings->site_name}} is a long-term project. I have earned $1000 in
            just one week. It's easy and safe, the payment is very fast,
            I will recommend my friends to join.</p>
        
       
         <!-- those values ontop of the .... -->
        <div class="clearfix"></div>


          <br />
         
       
        
       
      </div>
    </div>  <!-- end the col -->



    <div class="col-lg-3 col-md-6 col-sm-12 plan-wrap " data-aos="fade-up">
        <div class="col-plan-inner">
          <div class="col-plan-head">
              <img src="{{$settings->site_address}}/public/images/test2.png" class="heartbeat" />
            <p> &nbsp;</p>
          </div>

          <p>I can't believe I earned $8730 in just 15 days. Thanks to
              {{$settings->site_name}} for helping me with the financial crisis, I will
              continue to invest.</p>
          
         
           <!-- those values ontop of the .... -->
          <div class="clearfix"></div>


            <br />
           
         
          
         
        </div>
      </div>  <!-- end the col -->



      <div class="col-lg-3 col-md-6 col-sm-12 plan-wrap " data-aos="fade-up">
          <div class="col-plan-inner">
            <div class="col-plan-head">
                <img src="{{$settings->site_address}}/public/images/test3.png" class="heartbeat" />
              <p> &nbsp;</p>
            </div>

            <p>My friend recommended me to join, I don't need any skills,
                {{$settings->site_name}} experts completely help me to earn passive income
                fully.</p>
            
           
             <!-- those values ontop of the .... -->
            <div class="clearfix"></div>


              <br />
             
           
            
           
          </div>
        </div>  <!-- end the col -->






<!-- end the col -->




        <br />
       
     
      
     
    </div>
  </div>  <!-- end the col -->




  

    
  </section>
  <!-- end main container -->

</section> <!-- end wrapper -->

      
    </div>
    <div style="padding: 20px;"></div>
    @endsection