@extends('layouts.base')


@inject('content', 'App\Http\Controllers\FrontController')
@section('content')

 <!-- =============================Wrapper========================================================== -->
 <section class="wrapper">
       <!-- this is the top area with image and large write up for the about page  -->
      <div class="abt-lp">
        <h1 class="about-main-title">
          FAQ {{$settings->site_name}}        </h1>

      </div>
      <!-- ===================================About us section ========================= -->

      <div class="col-md-8 col-sm-12" style="margin: 40px auto 20px auto;">
        <br />
        <h1 class="text-center"> <b> Frequently Asked Questions </b></h1>
        <br />
        <p class="t-p text-center"> Many of our customers have specific questions and concerns about our Professional trading services. Here are just a few of the questions asked and the answers to them.</p>
        
      </div> 
      <div class="clearfix"></div>
      <!-- ========================================the two column section ============================= -->
      <section class="container">
        <!-- this is the General Questions area  -->
      <h2 class="text-center"> <b> General Questions</b></h2>

        <div class="accordion" id="accordionExample">
          <div class="card">
            <div class="card-header" id="headingOne">
              <!-- this is the cross  -->
              <div class="cross-broder">
                <div class="cross">
                </div>
              </div>
              <h2 class="mb-0">
                <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" style="text-decoration: none!important;">
                  What are the risks and guarantees for your customers?
                </button>
              </h2>
            </div>

            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">

              <div class="card-body lite-ash">
                There are risks in Trading all assets, that is exactly why there is {{$settings->site_name}} , all trade risk are borne by us, if there is any loss that stalls the trading,the Investor will be Refunded his Capital.
              </div>
            </div>
          </div>

          <!-- ========================================================================================================== -->
          <div class="card">
            <div class="card-header" id="headingTwo">
              <!-- this is the cross  -->
              <div class="cross-broder">
                <div class="cross">
                </div>
              </div>
              <h2 class="mb-0">
                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" style="text-decoration: none!important;">
                  What is the minimum and the maximum amounts that I can invest?
                </button>
              </h2>
            </div>
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
              <div class="card-body">
                The minimum deposit is only 500 USD, the maximum deposit is not limited.
              </div>
            </div>
          </div>

          <!-- ============================================================================================================ -->
          <div class="card">
            <div class="card-header" id="headingThree">
              <!-- this is the cross  -->
              <div class="cross-broder">
                <div class="cross">
                </div>
              </div>
              <h2 class="mb-0">
                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree" style="text-decoration: none!important;">
                  What is the schedule for my profit accrual?
                </button>
              </h2>
            </div>
            <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
              <div class="card-body">
                 Profit is returned to investments at every 24 hours from their time of activation.
              </div>
            </div>
          </div>

          <!-- ============================================================================================================ -->
          <div class="card">
            <div class="card-header" id="headingfour">
              <!-- this is the cross  -->
              <div class="cross-broder">
                <div class="cross">
                </div>
              </div>
              <h2 class="mb-0">
                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapsefour" aria-expanded="false" aria-controls="collapsefour" style="text-decoration: none!important;">
                  What are the payment systems you operates with? 
                </button>
              </h2>
            </div>
            <div id="collapsefour" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
              <div class="card-body">
                Deposits and Withdrawals to and from {{$settings->site_name}} are processed through Bitcoin & Ethereum.
              </div>
            </div>
          </div>

        </div>
        <br />

        <!-- ==================================================================================================================================================== -->
        <center> <h2> <b> Deposits Questions </b></h2></center>
         <br />

        <div class="accordion" id="accordionExample">
          <div class="card">
            <div class="card-header" id="headingOne">
              <!-- this is the cross  -->
              <div class="cross-broder">
                <div class="cross">
                </div>
              </div>
              <h2 class="mb-0">
                <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapsefive" aria-expanded="true" aria-controls="collapsefive" style="text-decoration: none!important;">
                  Are my funds at risk in case of Insolvency/Bankruptcy?
                </button>
              </h2>
            </div>

            <div id="collapsefive" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">

              <div class="card-body">
               No, we have a Backup account holding funds in Relation to the amount of invested funds, though we are confident of a foul proof trading technique ,we will not claim to be perfect and that is why we offer an assurance to return 100% of investors Capital if there is any issue.
              </div>
            </div>
          </div>

          <!-- ========================================================================================================== -->
          <div class="card">
            <div class="card-header" id="headingTwo">
              <!-- this is the cross  -->
              <div class="cross-broder">
                <div class="cross">
                </div>
              </div>
              <h2 class="mb-0">
                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapsesix" aria-expanded="false" aria-controls="collapsesix" style="text-decoration: none!important;">
                  How to make a deposit?
                </button>
              </h2>
            </div>
            <div id="collapsesix" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
              <div class="card-body">
                Read the terms of the proposed investment strategy and make a deposit to your desired plan using the deposit section in your account. Send the Indicated amount from any Bitcoin wallet or Ethereum Wallet to the wallet address generated for your account. The deposit will be credited as soon as the funds are confirmed.
              </div>
            </div>
          </div>

        </div>

         <!-- ==================================================================================================================================================== -->
        <center> <h2> <b> Withdrawal Questions </b></h2></center>
         <br />

        <div class="accordion" id="accordionExample">
          <div class="card">
            <div class="card-header" id="headingOne">
              <!-- this is the cross  -->
              <div class="cross-broder">
                <div class="cross">
                </div>
              </div>
              <h2 class="mb-0">
                <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseseven" aria-expanded="true" aria-controls="collapseseven" style="text-decoration: none!important;">
                  When can I withdraw my profit? When can I withdraw my profit?
                </button>
              </h2>
            </div>

            <div id="collapseseven" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">

              <div class="card-body">
               You can withdraw your profit from all of our investment plans once the trading period of such package elapses. You can also accumulate your profit to your desired amount till withdrawal. Always ensure to be in contact with your account manager. Also, our support is always available if assistance or enquiries needed.
              </div>
            </div>
          </div>


        </div>
                  
        
      </section>
    
    

     <div style="padding: 50px;"></div>
      
    </section> <!-- end wrapper -->

@endsection