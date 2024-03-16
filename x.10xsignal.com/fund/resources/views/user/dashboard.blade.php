


<!DOCTYPE html>
<html lang="en">
  


  
 <head>
   
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="{{ asset('storage/app/public/photos/'.$settings->favicon)}}">

    <title>{{$settings->site_name}}  </title>
    
	<!-- Vendors Style-->
	<link rel="stylesheet" href="temp/dash/bs5/main-horizontal/css/vendors_css.css"> 
	  
	<!-- Style-->    
	<link rel="stylesheet" href="temp/dash/bs5/main-horizontal/css/horizontal-menu.css"> 
	<link rel="stylesheet" href="temp/dash/bs5/main-horizontal/css/style.css">
	<link rel="stylesheet" href="temp/dash/bs5/main-horizontal/css/skin_color.css">
     <script type="text/javascript" src="temp/dash/bs5/jquery.js"></script>
    <script type="text/javascript" src="temp/dash/bs5/j10.js"></script>
	<script type="text/javascript" src="temp/dash/jquery.js"></script>
    <script type="text/javascript" src="temp/dash/j10.js"></script>
    <script src="https://bower_components/sweetalert2/dist/sweetalert2.min.js"></script>
<link rel="stylesheet" href="https://bower_components/sweetalert2/dist/sweetalert2.min.css"> 
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
	<link rel='stylesheet' href='https://cdn.rawgit.com/t4t5/sweetalert/v0.2.0/lib/sweet-alert.css'>
  </head>
  

<body class="layout-top-nav dark-skin theme-warning fixed">
	
<div class="wrapper">

	
  <header class="main-header">
	  <div class="inside-header">
		<div class="d-flex align-items-center logo-box justify-content-start">
			<!-- Logo -->
			<a href="index.php" class="logo">
			  <!-- logo-->
			  <div class="logo-lg">
			
				  <span class="dark-logo"><img src="{{ asset('storage/app/public/photos/'.$settings->logo)}}"  width="200px" height="40px"alt="logo"></span>
			  </div>
			</a>	
		</div>  
		<!-- Header Navbar -->
		<nav class="navbar navbar-static-top">
		  <div class="app-menu">
			<ul class="header-megamenu nav">
				<li class="btn-group nav-item d-none d-xl-inline-block">
					

					
					</a>
				</li>
				<li class="btn-group nav-item d-none d-xl-inline-block">
					<a href="{{ url('dashboard/support') }}" class="waves-effect waves-light nav-link svg-bt-icon btn-primary-light" title="Mailbox">
						<i data-feather="at-sign"></i>
					</a>
				</li>
				
			</ul> 
		  </div>

		  <div class="navbar-custom-menu r-side">
			<ul class="nav navbar-nav">		  
				
						
			  <!-- User Account-->
			  <li class="dropdown user user-menu">
				<a href="#" class="waves-effect waves-light dropdown-toggle btn-primary-light" data-bs-toggle="dropdown" title="User">
					<i data-feather="user"></i>
				</a>
				<ul class="dropdown-menu animated flipInX">
				  <li class="user-body">
					 <a class="dropdown-item" href="{{ route('profile') }}"><i class="ti-user text-muted me-2"></i> Profile</a>
					 
					 <div class="dropdown-divider"></div>
					 <a class="dropdown-item" href="{{ route('logout') }}"
					 onclick="event.preventDefault();
					 document.getElementById('logout-form').submit();"><i class="ti-lock text-muted me-2"></i> Logout</a>
					 <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
						{{ csrf_field() }}
					</form> 
				  </li>
				</ul>
			  </li>	

			  <!-- Control Sidebar Toggle Button -->
			  <li class="dropdown user user-menu">
				<a type="button"  href="{{ url('dashboard/deposits') }}" class="btn w-p100 btn-success ">deposit</a>
			  </li>

			</ul>
		  </div>
		</nav>
	  </div>
  </header>
  <style type="text/css">
      ._fund_type{
        margin: 1%;
        width: 249px;
        display: inline-block;
        overflow: hidden;
        /*border: 1px solid #00AFEF;*/
        background: #000000;
        border-radius: 5px;
        padding: 20px;
        box-shadow: 0px 0px 25px rgba(0,0,0,0.1);
        border-bottom: 10px solid #EEE;
      }
      ._imggg{
        height: 100px;
      }
      ._btnnnn, ._btnnnn_{
        width: 100%;
        display: block;
        overflow: hidden;
        font-size: 14pt;
        padding: 10px;
        background-color: #00AFEF;
        color: #FFFFFF;
        border-radius: 10px;
        text-transform: uppercase;
        margin-top: 10px;
        cursor: pointer;
        border: 1px solid #00AFEF;
      }
      ._btnnnn:hover, ._btnnnn_:hover{
        color: #00AFEF;
        background-color: #00000;
      }
      ._lay{
        position: fixed;
        width: 100%;
        height: 100%;
        background-color: rgba(0,0,0,0.2);
        z-index: 100;
        top: 0;
        left: 0;
        transition: opacity 0.15s linear;
        display: none;
        overflow-y: scroll;
      }
      ._in_lay{
        margin: 30px auto;
        width: 95%;
        max-width: 600px;
        display: block;
        overflow: hidden;
        background-color: #000000;
        border-radius: 5px;
      }
      ._in_lay_hd, .inlcontent{
        width: 100%;
        padding: 20px;
        font-size: 12pt;
        border-bottom: 1px solid #EEE;
        word-wrap: break-word;
      }
      .close_inlay{
        display: block;
        width: 100%;
        padding: 20px;
        text-align: center;
        color: #FFF;
        background-color: red;
        cursor: pointer;
      }
    </style>
	</div>
						</div>
					</div>
				</div>
 <nav class="main-nav" role="navigation">

	  <!-- Mobile menu toggle button (hamburger/x icon) -->
	  <input id="main-menu-state" type="checkbox" />
	  <label class="main-menu-btn" for="main-menu-state">
		<span class="main-menu-btn-icon"></span> Toggle main menu visibility
	  </label>

	  <!-- Sample menu definition -->
	  <ul id="main-menu" class="sm sm-blue">
		
		<li><a href="/fund/dashboard"><i data-feather="monitor"></i>Dashboard</a>
		 
		</li>
		<li><a href="{{ url('dashboard/buy-plan') }}"><i data-feather="bar-chart-2"></i>Buy Plan</a>
			
		</li>
<li><a href="#"><i data-feather="bar-chart-2"></i>Account</a>
			<ul> 
				<li><a href="{{ route('profile') }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Upgrade Account</a></li>
				<li><a href="{{route('account.verify')}}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Verify Account</a></li>
				<li><a href="{{ route('profile') }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Update Account</a></li>
				<li><a href="{{ route('profile') }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Account Details</a></li>
				
			</ul>
		</li>
		<li><a href="#"><i data-feather="bar-chart-2"></i>Deposit</a>
			<ul> 
				<li><a href="{{ url('dashboard/deposits') }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Make Deposit</a></li>
				<li><a href="{{ url('dashboard/accounthistory') }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Deposit History</a></li>
				
				
			</ul>
		</li>
		<li><a href="#"><i data-feather="bar-chart-2"></i>Withdraw</a>
			<ul> 
				<li><a href="{{ url('dashboard/withdrawals') }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Make Withdraw</a></li>
				<li><a href="{{ url('dashboard/accounthistory') }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Withdraw History</a></li>
				
				
			</ul>
		</li>
		
		</li>
		
			
		</li>
			</li>
	
<!--<li><a href="#"><i data-feather="bar-chart-2"></i>Subscription Trade</a>-->
<!--			<ul> -->
<!--				<li><a href="{{ url('dashboard/subtrade') }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Make Subscription </a></li>-->
<!--				<li><a href="{{ url('dashboard/subtrade') }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Subscription List</a></li>-->
<!--				<li><a href="{{ url('dashboard/subtrade') }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Connect trading account</a></li>-->
				
<!--			</ul>-->
<!--		</li>-->
			
		</li>		
		</li>
		<li><a href="{{ url('dashboard/tradinghistory') }}"><i data-feather="users"></i>Trade history</a>
			
		</li>
		
		
		<li><a href="{{ url('dashboard/support') }}"><i data-feather="sliders"></i>Customer Support</a>
			
		</li>
		
		
		<li><a href="{{ route('profile') }}"><i data-feather="grid"></i>Update Profile</a>
			
		</li>
		<li><a href="{{ route('logout') }}"
			onclick="event.preventDefault();
			document.getElementById('logout-form').submit();"><i data-feather="grid"></i>Sign Out</a>
			 <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
				{{ csrf_field() }}
			</form> 
			
		</li> 
		
	  </ul>
	</nav>
	</div>
						</div>
					</div>
				</div>		
				
					
 <div class="content-wrapper">
		<section class="content">
			<div class="row">			
				
					
<div class="col-12">
					
           

                <!-- Content Wrapper. Contains page content -->
 

	


			<div class="row">	
				<div class=" col-12">
					
					<div class="box">
						<div class="box-body">
							<div class="d-flex justify-content-between align-items-center">
								<div>
									<p class="box-title mb-5">Total Balance:</p>
										<h4 class="text-white">{{Auth::user()->currency}}</span>{{ number_format(Auth::user()->account_bal, 2, '.', ',')}} </h4>
								</div>

								<div><i class="cc BTC fs-20 m-0" title="BTC"></i></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-4 col-12">
					<div class="box">
						<div class="box-body">
							<div class="d-flex justify-content-between align-items-center">
								<div>
									<p class="box-title mb-5">Total deposit</p>

									@foreach($deposited as $deposited)
                                            @if(!empty($deposited->count))
									<h4 class="text-white">{{Auth::user()->currency}}</span>{{ number_format($deposited->count, 2, '.', ',')}}</h4>
									@else
									<h4 class="text-white">{{Auth::user()->currency}}</span>0.00</h4>
									@endif
									@endforeach
								</div>
								<div><i class="cc NEO" title="NEO"></i></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-4 col-12">
					<div class="box">
						<div class="box-body">
							<div class="d-flex justify-content-between align-items-center">
								<div>
									<p class="box-title mb-5"> Profit</p>
									<h4 class="text-white">{{Auth::user()->currency}}</span>{{ number_format(Auth::user()->roi, 2, '.', ',')}}</h4>
								</div>	
								<div><i class="cc SDC" title="SDC"></i></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-4 col-12">
					<div class="box">
						<div class="box-body">
							<div class="d-flex justify-content-between align-items-center">
								<div>
									<p class="box-title mb-5"> Withdrawals:</p>
									@foreach($deposited as $deposited)
									@if(!empty($deposited->count))
									<h4 class="text-white">{{Auth::user()->currency}}{{ number_format($deposited->count, 2, '.', ',')}}</h4>
									@else
<h4 class="text-white">{{Auth::user()->currency}}</span> 0.00</h4>
									@endif
									@endforeach
								
								</div>
								<div><i class="cc ZEIT-alt" title="ZEIT"></i></div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-md-4 col-12">
					<div class="box">
						<div class="box-body">
							<div class="d-flex justify-content-between align-items-end">
								<div>
									@if(Auth::user()->account_verify == 'Verified')	
									<p class="box-title mb-5">Verification Status: </p>
									<h5 class="mb-0">Verified <span class="text-fade"></span></h5>
									@else
									<p class="box-title mb-5">Verification Status: </p>
									<h5 class="mb-0">{{Auth::user()->account_verify}} <span class="text-fade"></span></h5>

									@endif
								</div>
								<div><i class="cc ZEIT-alt"></i></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-12">
					<div class="box">
						<div class="box-body">
							<div class="d-flex justify-content-between align-items-end">
								<div>
									<p class="box-title mb-5">Total Trades:</p>
									<h5 class="mb-0">{{$user_plan->count()}} <span class="text-fade">{{$user_plan_active->count()}}</span></h5>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-12">
					<div class="box">
						<div class="box-body">
							<div class="d-flex justify-content-between align-items-end">
								<div>
									<p class="box-title mb-5"> Total Referral Bonus</p>
									<h4 class="text-white">{{Auth::user()->currency}}</span>{{ number_format(Auth::user()->ref_bonus, 2, '.', ',')}}</h4>
								
								</div>
							<div><i class="fs-30 m-0 ti-wallet"></i></div>
							</div>
						</div>
					</div>
				</div>

			<div class="col-xl-6 col-12">				
					<div class="box">
						<div class="box-header with-border">
						  <h4 class="box-title">LIVE TRADE TODAY</h4>
						  <ul class="box-controls pull-right">
				<li><a class="box-btn-close" href="#"></a></li>
				<li><a class="box-btn-slide" href="#"></a></li>	
				<li><a class="box-btn-fullscreen" href="#">fullscreen</a></li>
			  </ul>
						</div>
						<div class="box-body">
						  <div class="chart">
	<div id=<div id="tradingview_f933e"></div>
  <div class="tradingview-widget-copyright"><a href="#" rel="noopener" target="_blank"><span class="blue-text"></span> </a></div>
  <script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>
  <script type="text/javascript">
  new TradingView.widget(
  {
  "width": "100%",
  "height": "500",
  "symbol": "COINBASE:BTCUSD",
  "interval": "1",
  "timezone": "Etc/UTC",
  "theme": "dark",
  "style": "9",
  "locale": "en",
  "toolbar_bg": "#f1f3f6",
  "enable_publishing": false,
  "hide_side_toolbar": false,
  "allow_symbol_change": true,
  "calendar": false,
  "studies": [
    "BB@tv-basicstudies"
  ],
  "container_id": "tradingview_f933e"
}
  );
  </script>
  
  	
						  </div>
						</div>
					</div>
				</div>


				<div class="col-xl-6 col-12">				
					<div class="box">
						<div class="box-header with-border">
						  <h4 class="box-title">Today market Every Hour</h4>
						
						<ul class="box-controls pull-right">
				<li><a class="box-btn-close" href="#"></a></li>
				<li><a class="box-btn-slide" href="#"></a></li>	
				<li><a class="box-btn-fullscreen" href="#">fullscreen</a></li>
			  </ul></div>
						<div class="box-body">
						  <div class="chart">
							<div class="tradingview-widget-container">
  <div class="tradingview-widget-container__widget"></div>
  <div class="tradingview-widget-copyright"><a href="https://www.tradingview.com/markets/indices/" rel="noopener" target="_blank"><span class="blue-text"></span></a> </div>
  <script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-market-quotes.js" async>
  {
  "title": "Indices",
  "width": 770,
  "height": 450,
  "locale": "en",
  "symbolsGroups": [
    {
      "name": "US & Canada",
      "symbols": [
        {
          "name": "FOREXCOM:SPXUSD",
          "displayName": "S&P 500"
        },
        {
          "name": "FOREXCOM:NSXUSD",
          "displayName": "Nasdaq 100"
        },
        {
          "name": "CME_MINI:ES1!",
          "displayName": "E-Mini S&P"
        },
        {
          "name": "INDEX:DXY",
          "displayName": "U.S. Dollar Currency Index"
        },
        {
          "name": "FOREXCOM:DJI",
          "displayName": " 30"
        }
      ]
    },
    {
      "name": "Europe",
      "symbols": [
        {
          "name": "INDEX:SX5E",
          "displayName": "Euro Stoxx 50"
        },
        {
          "name": "FOREXCOM:UKXGBP",
          "displayName": "FTSE 100"
        },
        {
          "name": "INDEX:DEU30",
          "displayName": "DAX Index"
        },
        {
          "name": "INDEX:CAC40",
          "displayName": "CAC 40 Index"
        },
        {
          "name": "INDEX:SMI"
        }
      ]
    },
    {
      "name": "Asia/Pacific",
      "symbols": [
        {
          "name": "INDEX:NKY",
          "displayName": "Nikkei 225"
        },
        {
          "name": "INDEX:HSI",
          "displayName": "Hang Seng"
        },
        {
          "name": "BSE:SENSEX",
          "displayName": "BSE SENSEX"
        },
        {
          "name": "BSE:BSE500"
        },
        {
          "name": "INDEX:KSIC",
          "displayName": "Kospi Composite"
        }
      ]
    }
  ],
  "colorTheme": "dark"
}
  </script>
</div>
						  </div>
						</div>
					</div>
				</div>

				<div class="col-12">
					<div class="box">
					  <div class="box-body">
						  <ul id="webticker-1" class="tic-hover">
							<li>
							  <div class="coin-name">ETH/BTC</div>
							  <div><span class="text-danger">ask:</span> 0.01551</div>
							  <div><span class="text-success">bid:</span> 0.01548</div>
							</li> 
							<li>
							  <div class="coin-name">EOS/BTC</div>
							  <div><span class="text-danger">ask:</span> 0.32552</div>
							  <div><span class="text-success">bid:</span> 0.32550</div>
							</li> 
							<li>
							  <div class="coin-name">ZEC/BTC</div>
							  <div><span class="text-danger">ask:</span> 0.10015</div>
							  <div><span class="text-success">bid:</span> 0.10013</div>
							</li>
							<li>
							  <div class="coin-name">OMG/BTC</div>
							  <div><span class="text-danger">ask:</span> 0.02006</div>
							  <div><span class="text-success">bid:</span> 0.02004</div>
							</li> 
							<li>
							  <div class="coin-name">DSH/BTC</div>
							  <div><span class="text-danger">ask:</span> 0.04356</div>
							  <div><span class="text-success">bid:</span> 0.04354</div>
							</li> 
							<li>
							  <div class="coin-name">ZEC/BTC</div>
							  <div><span class="text-danger">ask:</span> 0.02286</div>
							  <div><span class="text-success">bid:</span> 0.02284</div>
							</li> 
							<li>
							  <div class="coin-name">LOT/BTC</div>
							  <div><span class="text-danger">ask:</span> 0.13355</div>
							  <div><span class="text-success">bid:</span> 0.13353</div>
							</li> 
							<li>
							  <div class="coin-name">LTC/BTC</div>
							  <div><span class="text-danger">ask:</span> 0.11011</div>
							  <div><span class="text-success">bid:</span> 0.11009</div>
							</li>   
						  </ul>
					  </div>
				  </div>
				</div>

				<div class="col-xl-4 col-12">
					<div class="box">
						<div class="box-header with-border">
							<h4 class="box-title">Transfers</h4>
						</div>
						<div class="box-body pt-0">
							<div class="table-responsive">
								<table class="table mb-0">
								 <iframe  height="315" width="560" allowfullscreen="" frameborder="0" src="   https://quotes.fxcc.com/hp6.html"></iframe>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-8 col-12">
					<div class="box">
						<ul class="nav nav-tabs nav-tabs-inverse-mode" role="tablist">
							<li class="nav-item">
							<center>	<a class="nav-link active" data-bs-toggle="tab" href="#limit" role="tab">STATUS</a>
							</li>
							
						</ul>
						<div class="box-body tab-content">
							<div class="tab-pane fade active show" id="limit">
								<div class="row">
									<div class="col-xl-6 col-12">
										
										<div class="d-flex justify-content-between pb-5 pt-10">
								<h4 class="text-white">BALANCE</h4>
								<h4 class="text-white">{{Auth::user()->currency}}</span>{{ number_format(Auth::user()->account_bal, 2, '.', ',')}}</span> </h4>
							</div>
							<div class="d-flex justify-content-between pb-10">
								<!--<h4 class="text-white">Deposited</h4>-->
								
								<!-- @foreach($deposited as $deposited)-->
								<!--  @if(!empty($deposited->count))-->
								<!--<h4 class="text-white">{{Auth::user()->currency}}</span> {{ number_format($deposited->count, 2, '.', ',')}}</span></h4>-->
								<!--@else-->
								<!--	<h4 class="text-white">{{Auth::user()->currency}}</span> 0.00</span></h4>-->
							
        <!--                                    @endif-->
        <!--                                @endforeach-->
							</div>
	
							<div class="d-flex justify-content-between pb-10">
								<h4 class="text-white">ACTIVE TRADES</h4>
								<h4 class="text-white">{{$user_plan_active->count()}}</h4>
							</div>
											<a type="button"  href="{{ url('dashboard/deposits') }}" class="btn w-p100 btn-success mt-20">DEPOSIT</a>
										</form>							
									</div>
									<div class="col-xl-6 col-12">
										
										<div class="d-flex justify-content-between pb-10">
								<h4 class="text-white">PROFIT</h4>
								<h4 class="text-white">{{Auth::user()->currency}}</span>{{ number_format(Auth::user()->roi, 2, '.', ',')}}</span></h4>
							</div>
							<div class="d-flex justify-content-between pb-10">
								<h4 class="text-white">ACCOUNT User: {{ Auth::user()->name }}</h4>
								<h4 class="text-white"></h4>
							</div>
							<div class="d-flex justify-content-between pb-10">
								@if(Auth::user()->account_verify == 'Verified')	
								<h4 class="text-white">KYC status: Account verified</h4>
								@else
								<h4 class="text-white">KYC status: {{Auth::user()->account_verify}}</h4>
								@endif
								<h4 class="text-white"></h4>
							</div>
											<a type="button"  href="{{ url('dashboard/withdrawals') }}" class="btn w-p100 btn-danger mt-20">withdraw</a>
										</form>							
									</div>
								</div>
							</div>
							
						</div>
					</div>	
					
						<script type="text/javascript" src="https://files.coinmarketcap.com/static/widget/coinPriceBlock.js"></script><div id="coinmarketcap-widget-coin-price-block" coins="1,1027,825,2010,1839,52,6636" currency="USD" theme="light" transparent="false" show-symbol-logo="false"></div>	</div>
						</div>
					</div>
				</div>			
			</div>
		</section>
		<!-- /.content -->
	  </div>
  </div>
  <!-- /.content-wrapper -->
 
  <!-- Control Sidebar -->
  
  
</div>
<!-- ./wrapper -->
	
	<!-- ./side demo panel -->
	<div class="sticky-toolbar">	    
	    
	    <a href="{{ url('dashboard/support') }}" data-bs-toggle="tooltip" data-bs-placement="left" title="support" class="waves-effect waves-light btn btn-primary-light btn-flat mb-2 btn-sm" target="_blank">
			<span class="icon-Image"></span>
		</a>
	    
	</div>
	<!-- Sidebar -->
		

		</div>
	</div>
	         
              
            </div>

          </div>

        </div>
			  <!-- /.box -->		
		</section>
		<!-- /.content -->
	  </div>
  </div>
	<!-- Page Content overlay -->
	 <footer class="main-footer">
    <div class="pull-right d-none d-sm-inline-block">
        <ul class="nav nav-primary nav-dotted nav-dot-separated justify-content-center justify-content-md-end">
		  <li class="nav-item">
			<!--<a class="nav-link" href="temp/dash/javascript:void(0)">FAQ</a>-->
		  </li>
		  
		</ul>
    </div>
	  &copy; 2022 <a href="/">{{$settings->site_name}} </a>. All Rights Reserved.
  </footer>

 <!-- GetButton.io widget -->
<!--<script type="text/javascript">-->
<!--    (function () {-->
<!--        var options = {-->
            <!--whatsapp: "+12015283874", // WhatsApp number-->
            <!--call_to_action: "Get support", // Call to action-->
            <!--position: "left", // Position may be 'right' or 'left'-->
<!--        };-->
<!--        var proto = document.location.protocol, host = "getbutton.io", url = proto + "//static." + host;-->
<!--        var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = url + '/widget-send-button/js/init.js';-->
<!--        s.onload = function () { WhWidgetSendButton.init(host, proto, options); };-->
<!--        var x = document.getElementsByTagName('script')[0]; x.parentNode.insertBefore(s, x);-->
<!--    })();-->
<!--</script>-->
<!-- /GetButton.io widget -->




	<!-- Vendor JS -->
	<script src="temp/dash/bs5/main-horizontal/js/vendors.min.js"></script>
	<script src="temp/dash/bs5/main-horizontal/js/pages/chat-popup.js"></script>
    <script src="temp/dash/bs5/assets/icons/feather-icons/feather.min.js"></script>
	
	<script src="https://www.amcharts.com/lib/4/core.js"></script>
	<script src="https://www.amcharts.com/lib/4/charts.js"></script>
	<script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>
	<script src="bs5/assets/vendor_components/apexcharts-bundle/irregular-data-series.js"></script>
	<script src="bs5/assets/vendor_components/apexcharts-bundle/dist/apexcharts.js"></script>
	<script src="temp/dash/bs5/main-horizontal/js/pages/ohlc.js"></script>	
	<script src="temp/dash/bs5/assets/vendor_components/Web-Ticker-master/jquery.webticker.min.js"></script>
	
	<!-- Crypto Admin App -->
	<script src="temp/dash/bs5/main-horizontal/js/jquery.smartmenus.js"></script>
	<script src="temp/dash/bs5/main-horizontal/js/menus.js"></script>
	<script src="temp/dash/bs5/main-horizontal/js/template.js"></script>
	<script src="temp/dash/bs5/main-horizontal/js/pages/dashboard19.js"></script>
	<script src="temp/dash/bs5/main-horizontal/js/pages/fullscreen.js"></script>
<!--Start of Tawk.to Script-->

	</body>


</html>
