@extends('layouts.base')

@section('title', 'About Us')


@inject('content', 'App\Http\Controllers\FrontController')
@section('content')
<!-- =============================Wrapper========================================================== -->
<section class="wrapper">


    <section class="container-fluid bg-market">
        <div class="row">
          <div class="col-6 abt-us-txt">
            <h2 class="p-20 white">  etfs  </h2>
          </div>

     
        </div>
  <!-- ============BREADCUMB================== -->
  <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="index">Home</a></li>
      <li class="breadcrumb-item active" aria-current="page">etfs</li>
    </ol>
  </nav>
  <br>
  <section class="container-fluid">
    <div class="row">
      <div class="col-md-8 col-sm-12 col-crypto">
        <div class="container">
          <br />
          <h2 class="text-right t-h2"> Etfs </h2>

          <img src="{{$settings->site_address}}/public/images/etfs.png" >
          <div style="padding: 20px;">
            <h3> <b> Etfs </b></h3>
            <p class="t-p">An exchange-traded fund (ETF) is a financial instrument comprised of several assets grouped together to serve as one tradable asset. Each fund follows a certain market strategy or index and is designed to either suit the hedging needs of a specific financial institution, or to be a low-risk option for investors. ETFs are created by financial bodies using a team of experts who tailor each fund to meet its specific goal. The assets within the fund are owned by its creators, and just like stocks, dividends can be distributed to investors from time to time. ETFs are usually considered to be long-term investment tools, as they are geared towards low-risk, and are designed to yield steady profits over time.</p>
            <br />
          

            

            <p>Some of our popular ETFs include:</p>
            <br />
            <ul class="crypto-list">
              <li> <i class="fas fa-arrow-right"></i> <b> Proshares Ultra S&P 500 (SSO)</b> </li>
              <li> <i class="fas fa-arrow-right"></i> <b>SPDR Gold (GLD) </b></li>
              <li> <i class="fas fa-arrow-right"></i> <b> Emerging Markets Index (EEM)  </b> </li>
            </ul>

              <h3> <b> Professional Customer Support </b></h3>
            <p class="t-p">{{$settings->site_name}} customers enjoy high standard customer support around the clock via email and chat. Our representatives will gladly answer all of your questions..</p>
            <br />

        
            
          </div>
        </div> <!-- end container -->
        
        
        
      </div> <!-- end column-->

      <div class="col-md-4 col-sm-12">
        <div class="pad-55"></div>
        <div class="container">
          <div class="crypto-cat">
            <a href="crypto"> <div> Cryptocurrencies</div> </a>
            <a href="indices"> <div> Indices</div> </a>
            <a href="forex"> <div> Forex</div> </a>
            <a href="commodities"> <div> Commodities</div> </a>
            <a href="shares"> <div> Shares</div> </a>
            <a href="options"> <div> Options</div> </a>
            <div class="current-crypto">  <p> <i class="fas fa-arrow-alt-circle-right"></i> &nbsp ETFs</p></div>
            <br />


             <div class="crypto-form"> 
              <h3 class="text-center"> Have a Question?  </h3>
              <form>
              <div class="form-group">
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Your Name">
              </div>

              <div class="form-group">
                <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Email*">
              </div>

               <div class="form-group">
                  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>

              <button type="submit" class="plan-signup-crypto">Submit</button>
            </form>
            </div>            </div>
          
        </div>

            
      </div> <!-- end the container --> 

      
    </div><!-- end row -->
    
  </section>
  @endsection