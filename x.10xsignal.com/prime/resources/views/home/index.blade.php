
@extends('layouts.base')



@inject('content', 'App\Http\Controllers\FrontController')
@section('content')
      





        
        <!-- END STANDARD HEADER HERE --- ####################################################-->
    
    
      
      

<div class="front-slider">
            <div id="desktop-slider" class="carousel slide carousel-fade" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#desktop-slider" data-slide-to="0" class="active"></li>
                    <li data-target="#desktop-slider" data-slide-to="1"></li>
                    <li data-target="#desktop-slider" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">

                        <img src="{{$settings->site_address}}/public/city/assets/slides/corporate1.jpg" alt="Expanding the possibilities">

                        <div class="carousel-caption">
                            <h1><strong>Expanding the possibilities,</strong><br> achieving the impossible. 
                            </h1>
                            <a href="register" class="btn btn-default  btn-lg">Start Now!</a>

                        </div>
                    </div>
                    <div class="carousel-item">
                        <picture class="d-block w-100">
                            <source srcset="{{$settings->site_address}}/public/city/assets/slides/corporate2.jpg" type="image/webp">
                            <source srcset="{{$settings->site_address}}/public/city/assets/slides/corporate2.jpg" type="image/jpeg">
                            <img src="{{$settings->site_address}}/public/city/assets/slides/corporate2.jpg" alt="The impossible">
                        </picture>
                        <div class="carousel-caption">
                            <h1><strong>The impossible</strong><br> and unthinkable.
                            </h1>
                            <a href="register" class="btn btn-default  btn-lg">Start Now!</a>

                        </div>
                    </div>
                    <div class="carousel-item">

                        <picture class="d-block w-100">
                            <source srcset="{{$settings->site_address}}/public/city/assets/slides/slide_3.webp" type="image/webp">
                            <source srcset="{{$settings->site_address}}/public/city/assets/slides/slide_3.jpg" type="image/jpeg">
                            <img src="{{$settings->site_address}}/public/city/assets/slides/slide_3.jpg" alt="Expanding the possibilities">
                        </picture>

                        <div class="carousel-caption">
                            <h1><strong>Endless</strong><br> Opportunities
                            </h1>
                            <a href="register" class="btn btn-default  btn-lg">Start Now!</a>

                        </div>
                    </div>
                    <div class="carousel-item">
                        <picture class="d-block w-100">
                            <source srcset="{{$settings->site_address}}/public/city/assets/slides/slide_4.webp" type="image/webp">
                            <source srcset="{{$settings->site_address}}/public/city/assets/slides/slide_4.jpg" type="image/jpeg">
                            <img src="{{$settings->site_address}}/public/city/assets/slides/slide_4.jpg" alt="Expanding the possibilities">
                        </picture>
                        <div class="carousel-caption">
                            <h1><strong>A brand new</strong><br>horizon</h1>
                            <a href="register" class="btn btn-default  btn-lg">Start Now!</a>

                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#desktop-slider" role="button" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
                <a class="carousel-control-next" href="#desktop-slider" role="button" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
            </div>


            <div id="mobile-slider" class="carousel slide carousel-fade" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#mobile-slider" data-slide-to="0" class="active"></li>
                    <li data-target="#mobile-slider" data-slide-to="1"></li>
                    <li data-target="#mobile-slider" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">

                        <picture class="d-block w-100">
                            <source srcset="{{$settings->site_address}}/public/city/assets/slides/corporate1.jpg" type="image/webp">
                            <source srcset="{{$settings->site_address}}/public/city/assets/slides/corporate1.jpg" type="image/jpeg">
                            <img src="{{$settings->site_address}}/public/city/assets/slides/corporate1.jpg" alt="Expanding the possibilities">
                        </picture>

                        <div class="carousel-caption">
                            <h1><strong>Expanding the possibilities,</strong><br> achieving the impossible
                            </h1>
                            <a href="register" class="btn btn-default  btn-lg">Start Now!</a>

                        </div>
                    </div>
                    <div class="carousel-item">

                        <picture class="d-block w-100">
                            <source srcset="{{$settings->site_address}}/public/city/assets/slides/corporate2.jpg" type="image/webp">
                            <source srcset="{{$settings->site_address}}/public/city/assets/slides/corporate2.jpg" type="image/jpeg">
                            <img src="{{$settings->site_address}}/public/city/assets/slides/corporate2.jpg" alt="Expanding the possibilities">
                        </picture>

                        <div class="carousel-caption">
                            <h1><strong>The impossible</strong><br> and unthinkable.
                            </h1>
                            <a href="register" class="btn btn-default  btn-lg">Start Now!</a>

                        </div>
                    </div>
                    <div class="carousel-item">

                        <picture class="d-block w-100">
                            <source srcset="{{$settings->site_address}}/public/city/assets/slides/1.jpg" type="image/webp">
                            <source srcset="{{$settings->site_address}}/public/city/assets/slides/1.jpg" type="image/jpeg">
                            <img src="{{$settings->site_address}}/public/city/assets/slides/1.jpg" alt="Expanding the possibilities">
                        </picture>

                        <div class="carousel-caption">
                            <h1><strong>Endless</strong><br> Opportunities
                            </h1>
                            <a href="register" class="btn btn-default  btn-lg">Start Now!</a>

                        </div>
                    </div>
                    <div class="carousel-item">

                        <picture class="d-block w-100">
                            <source srcset="{{$settings->site_address}}/public/city/assets/slides/corporate4.jpg" type="image/webp">
                            <source srcset="{{$settings->site_address}}/public/city/assets/slides/corporate4.jpg" type="image/jpeg">
                            <img src="{{$settings->site_address}}/public/city/assets/slides/corporate4.jpg" alt="Expanding the possibilities">
                        </picture>

                        <div class="carousel-caption">
                            <h1><strong>A brand new</strong><br>horizon</h1>
                            <a href="register" class="btn btn-default  btn-lg">Start Now!</a>

                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#mobile-slider" role="button" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
                <a class="carousel-control-next" href="#mobile-slider" role="button" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
            </div>
        </div>
         <div class="front-page-features">

            <div class="timing feature-item">
                <div class="feature-item-icon"><img src="{{$settings->site_address}}/public/city/assets/img/time-icon.png" alt="timing icon"></div>
                <h3>The Right<br>Timing</h3>
                <p>Our doors are open to create a new beginning. We aligned possibilities using advanced algorithms in the financial market because, in the forex/crypto investment market, time is money. Enjoy high daily interest rates with well-diversified intelligent portfolios that generates secure revenue.</p>
            </div>

            <div class="team feature-item">
                <div class="feature-item-icon"><img src="{{$settings->site_address}}/public/city/assets/img/team-icon.png" alt="team icon"></div>
                <h3>The Right<br> Team</h3>
                <p>The NonsensePoor script visionary team is committed to delivering exceptional results, focused being one step ahead. We are building an FX trading platform for the long-term, setting up the standard to change the fortune of future generations to come!. The investment team has a unique mixture of technology and operating expertise in the distributed ledger systems as well as financial and capital markets experience – this unique skill set allows for sophisticated technical and valuation analysis within the portfolio construction process. With team located all around the world, Prime Trader Fx has 24-hour coverage of the constantly mining digital asset.</p>
            </div>

            <div class="technology feature-item">
                <div class="feature-item-icon"><img src="{{$settings->site_address}}/public/city/assets/img/ui-icon.png" alt="tech icon"></div>
                <h3>The Right<br> Technology</h3>
                <p>A completely unique approach to EA (Forex software) and AI development. Outstanding results, closely monitored and measured by the NonsensePoor script trading team of dedicated professionals. No Whitelabel or 3rd party technology employed. The first registered digital asset investment company that provides services with a secure and fast transaction infrastructure developed by world standards, in governence of the expert team and experienced advisory board.</p>
            </div>
        </div>

        <div style="display:block; position: relative; z-index: 1;">
            <div class="front-page-video-block">
                <div class="video-area">

                    <div class="video-container">
                        <!--<img src="{{$settings->site_address}}/public/city/assets/img/play-icon.png" class="video-trigger" alt="Learn about forex">--><div ><iframe width="100%" height="361" src="https://www.youtube.com/embed/DqRgSbDbwX0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen class="video-trigger"></iframe></div>
                        <div class="video-summary">
                            <p>PART OF SOMETHING BIGGER</p>
                            <h3>The complex world of Forex just got a lot easier with NonsensePoor script</h3>
                            <p style="color:black; font-weight:bolder;"> Earn like a pro investing in primetraderfx.com,steady income wins the good life. One step forward, Making your future plan. The Company Is Created To Offer Exclusive Interest Returns And Legally Registered And Certified. You can invest  through a variety of investment plans to earn stable and fast profits daily</p>
                            <p style="color:black; font-weight:bolder;">The 5 trillion dollar a day forex attracts millions of people with a shared dream of financial freedom. NonsensePoor script is artfully combining the technical expertise required for forex success, with a dedicated corporate team,
                                state-of-the-art headquarters and a passion for helping those with a strong desire to improve their lives.</p>
                            <br>
                            <p><a href="/forex" class="btn btn-outline-success btn-lg " title="Learn how to be successful with Forex">Know More About Forex</a></p>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <div class="academy-block text-center">
            <div class="container">
                <h1><small>WELCOME TO THE TRADING</small><br>Prime Trader Fx</h1>
                <p style="font-weight:500">Returns on Investment
The profit from an activity for a particular period compared with the amount invested in it and paid on Daily basis.
</p><p style="font-weight:500">
   Prime Trader Fx is a trusted investment services company giving investors great opportunity to access high-growth investment system. by top investment and financial managers from Europe. Our platform offers the most trending developments in trading and financial market analysis and giving our investors great choices to invest their funds for high ROI.
ROI is a popular metric because of its versatility and simplicity. Essentially, ROI can be used as a rudimentary gauge of an investment’s profitability. This could be the ROI on a stock investment, the ROI a company expects on expanding to the next level, and the ROIs are generated in real term transactions. The calculation itself is not too complicated, and it is relatively easy to interpret for its wide range of applications. If an investment’s ROI is net positive, it is probably worthwhile. But if other opportunities with higher ROIs are available, these signals can help investors eliminate or select the best options. Likewise, investors should avoid negative ROIs, those platforms that corrupt the markets, and also imply a net loss to all their investors. Study and grow with NonsensePoor script and explore to control and earn your financial status.
</p><p style="font-weight:500">
NonsensePoor script prices you the smart and four various investment packages for you to earn fixed daily ROIs on your investment. Please review our investment packages which are stated below.</p>

                <div class="academy-feature-grid">
                    <div class="academy-feature academy-1">
                        <img src="{{$settings->site_address}}/public/city/assets/img/knowledge-icon.png" class="academy-icon" alt="Knowledge">
                        <h3>Knowledge</h3>
                        <p>Knowledge is the foundation of your future success. The NonsensePoor script Academy will be your partner in maintaining your foundation for a lifetime of financial success. </p>
                    </div>

                    <div class="academy-feature academy-2">
                        <img src="{{$settings->site_address}}/public/city/assets/img/execution-icon.png" class="academy-icon" alt="Execution">
                        <h3>Execution</h3>
                        <p>With your foundation in place, develop the skills of a profitable trader so you are taking the proper actions when the time is right. </p>
                    </div>

                    <div class="academy-feature academy-3">
                        <img src="{{$settings->site_address}}/public/city/assets/img/achievement-icon.png" class="academy-icon" alt="Achievement">
                        <h3>Achievement</h3>
                        <p>Imagine having the skills required to understand and profit in the largest financial market in the world. Graduating through the NonsensePoor script Academy will be one of your most valued lifetime achievements.</p>
                    </div>
                </div>

                <a href="{{$settings->site_address}}/public/academy" class="btn btn-outline-light btn-lg">Go To Your Academy</a>
            </div>
        </div>


        <div class="platform-block">
            <div class="text-center">
                <h1><small>SOMETHING DIFFERENT,</small> Something New.</h1>
                <p class="lead">Key Platform features that set us apart<br> in the forex marketplace</p>

                <div class="platform-computer">
                    <img src="{{$settings->site_address}}/public/city/assets/img/platform-computer.png" class="computer-image" alt="computer showing trading platform">

                    <div class="platform-features">
                        <div class="platform-feature fast-payments">
                            <div class="platform-icon"><img src="{{$settings->site_address}}/public/city/assets/img/fast-payments-icon.png" alt="Fast Payments"></div>
                            <h3>Fast Payments</h3>
                            <p style="color:black; font-weight:bolder;">Experiencing Trading success from the NonsensePoor script platform is critically important to all our members, equally important is being able to access trading gains. NonsensePoor script makes using Forex gains easy for all, regardless of your technical
                                abilities!
                            </p>
                        </div>

                        <div class="platform-feature layered-security">
                            <div class="platform-icon"><img src="{{$settings->site_address}}/public/city/assets/img/layered-security-icon.png" alt="Layerd Security">
                            </div>
                            <h3>Layered Security</h3>
                            <p style="color:black; font-weight:bolder;">Our passion is to assist you in your success; however, our technicians also make sure all platforms are protected with state-of-the-art security ensuring long-term results for our global membership.</p>
                        </div>

                        <div class="platform-feature proprietary-tech">
                            <div class="platform-icon"><img src="{{$settings->site_address}}/public/city/assets/img/propriotary-tech-icon.png" alt="Proprietary Technology">
                            </div>
                            <h3>Proprietary Technology</h3>
                            <p style="color:black; font-weight:bolder;">EA’s and other trading technology is designed exclusively at NonsensePoor script by our own team of experts. All systems are developed and refined exclusively for NonsensePoor script member use.
                            </p>
                        </div>

                        <div class="platform-feature transparent-reporting">
                            <div class="platform-icon"><img src="{{$settings->site_address}}/public/city/assets/img/transparent-reporting-icon.png" alt="Transparent Reporting">
                            </div>
                            <h3>Transparent Reporting</h3>
                            <p style="color:black; font-weight:bolder;">Access trade results easily and check NonsensePoor script historical trade results. WebTV with up to date trade ticker in member back-office! And Copy trade connect you directly to our results.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
 <div class="plans-list">
        <!--<div class="plan-block">
            <div class="plan-title">
                <div class="plan-title-underlay">Academy</div>
                <h1>Academy Plans</h1>
            </div>
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-sm-6 col-md-4 col-lg-2">
                        <div class="package-card academy-240">
                            <div class="package-icon">
                                <img src="{{$settings->site_address}}/public/city/assets/img/plan-icons/academy-240.png" alt="Academy 240">
                            </div>
                            <h3>Elemental Module</h3>
                            <p>Modules 1 & 2<br>Teaches both the fundamental of Forex trading, as well as the technical
                                and underlying concepts behind it.</p>
                            <a href="register" class="btn btn-default">Start Now</a>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-lg-2">
                        <div class="package-card academy-900">
                            <div class="package-icon">
                                <img src="{{$settings->site_address}}/public/city/assets/img/plan-icons/academy-900.png" alt="Academy 900">
                            </div>
                            <h3>Elemental Module</h3>
                            <p>Module 1 & 4<br>These courses also provide a solid introduction to Japanese candlesticks
                                and underlying concepts behind it. </p>
                            <a href="register" class="btn btn-default">Start Now</a>
                        </div>
                    </div>
                </div>
			</div>
		</div>-->


	    <div class="plan-block">

		    <div class="plan-title">
			    <div class="plan-title-underlay">Elemental</div>
			    <h1>INVESTMENT PACKAGE</h1>
		    </div>
		    <div class="container-fluid">
			    <div class="row justify-content-center">
				    						    <div class="col-sm-6 col-md-4 col-lg-2">
							    <div class="package-card elemental-300">
								    <div class="package-icon">
									    <img src="{{$settings->site_address}}/public/city/assets/img/plan-icons/plan1.png" alt="Starter Trade Plan">
									    
								    </div>
								    <h3>Starter Trade Plan</h3>
								    <p class="package-feature-list">
									   <b>Daily yeild 4%</b> <br>

									   <b>Min $200.00 - Max $5000.00<br>
									   
									   Automated Output<br>
									   
                                       Principal Deposit: Included<br>

									    Duration - 5days<br>
									    Referral- 10% <br>
									    4% DAILY ROI FOR 5 DAYS
									    </b>
								    </p>
								    <a href="register" class="btn btn-default">Start Now</a>
							    </div>
						    </div>
						    						    <div class="col-sm-6 col-md-4 col-lg-2">
							    <div class="package-card elemental-500">
								    <div class="package-icon">
									    <img src="{{$settings->site_address}}/public/city/assets/img/plan-icons/plan2.png" alt="Academy Pack 300">
								    </div>
								    <h3>Classic Trade plan</h3>
								    <p class="package-feature-list">
									  <b>Daily yeild 8%</b><br>
<b>Min $5,100.00 - Max $10,000.00<br>							    
 Automated Output<br>
 Principal Deposit: Included<br>
Duration - 7 days <br>
Referral - 10%<br>
8% DAILY ROI FOR 7 DAYS
	</b></p>
								    <a href="register" class="btn btn-default">Start Now</a>
							    </div>
						    </div>
						    						    <div class="col-sm-6 col-md-4 col-lg-2">
							    <div class="package-card elemental-1k">
								    <div class="package-icon">
									    <img src="{{$settings->site_address}}/public/city/assets/img/plan-icons/plan3.png" alt="Academy Pack 300">
								    </div>
								    <h3>Premium Trade plan </h3>
								    <p class="package-feature-list">
									 <b>Daily yeild 12%</b><br>
<b>Min $10,100.00 - Max $15000.00<br>							    
 Automated Output<br>
 Principal Deposit: Included<br>
Duration - 2 Weeks <br>
Referral - 10%<br>
12% DAILY ROI FOR 2 WEEKS
	</b>
								    </p>
								    <a href="register" class="btn btn-default">Start Now</a>
							    </div>
						    </div>
						    						    <div class="col-sm-6 col-md-4 col-lg-2">
							    <div class="package-card elemental-2k">
								    <div class="package-icon">
									    <img src="{{$settings->site_address}}/public/city/assets/img/plan-icons/plan4.png" alt="Academy Pack 300">
								    </div>
								    <h3>Monthly Trade Plan </h3>
								    <p class="package-feature-list">
									  <b>Daily yeild 16%</b><br>
<b>Min $15,100.00 - Max $50,000.00<br>							    
 Automated Output<br>
 Principal Deposit: Included<br>
Duration - 1 Month <br>
Referral - 10%<br>
16% DAILY ROI FOR 1 Month
	</b>
								    </p>
								    <a href="register" class="btn btn-default">Start Now</a>
							    </div>
						    </div>
						    						   <!-- <div class="col-sm-6 col-md-4 col-lg-2">
							    <div class="package-card elemental-3k">
								    <div class="package-icon">
									    <img src="{{$settings->site_address}}/public/city/assets/img/plan-icons/3000.png" alt="Academy Pack 300">
								    </div>
								    <h3>Elemental</h3>
								    <p class="package-feature-list">
									    Academy Pack 900<br>

									    Trade Pool Deposit 2,100<br>

									    Leadership Program 1,500PV
								    </p>
								    <a href="register" class="btn btn-default">Start Now</a>
							    </div>
						    </div>-->
						    
					    			    </div>
		    </div>
	    </div>

<!--
	    <div class="plan-block">

		    <div class="plan-title">
			    <div class="plan-title-underlay">Advanced</div>
			    <h1>Advanced Plans</h1>
		    </div>
		    <div class="container-fluid">

			    <div class="row justify-content-center">

				    						    <div class="col-sm-6 col-md-4 col-lg-2">
							    <div class="package-card advanced-5k">
								    <div class="package-icon">
									    <img src="{{$settings->site_address}}/public/city/assets/img/plan-icons/5000.png" alt="Academy Pack 300">
								    </div>
								    <h3>Advanced</h3>
								    <p class="package-feature-list">
									    Academy Pack 1,500<br>

									    Trade Pool Deposit 3,500<br>

									    Leadership Program 2,500PV
								    </p>
								    <a href="register" class="btn btn-default">Start Now</a>
							    </div>
						    </div>
						    						    <div class="col-sm-6 col-md-4 col-lg-2">
							    <div class="package-card advanced-7k">
								    <div class="package-icon">
									    <img src="{{$settings->site_address}}/public/city/assets/img/plan-icons/7000.png" alt="Academy Pack 300">
								    </div>
								    <h3>Advanced</h3>
								    <p class="package-feature-list">
									    Academy Pack 2,100<br>

									    Trade Pool Deposit 4,900<br>

									    Leadership Program 3,500PV
								    </p>
								    <a href="register" class="btn btn-default">Start Now</a>
							    </div>
						    </div>
						    						    <div class="col-sm-6 col-md-4 col-lg-2">
							    <div class="package-card advanced-10k">
								    <div class="package-icon">
									    <img src="{{$settings->site_address}}/public/city/assets/img/plan-icons/10000.png" alt="Academy Pack 300">
								    </div>
								    <h3>Advanced</h3>
								    <p class="package-feature-list">
									    Academy Pack 3,000<br>

									    Trade Pool Deposit 7,000<br>

									    Leadership Program 5,000PV
								    </p>
								    <a href="register" class="btn btn-default">Start Now</a>
							    </div>
						    </div>
						    						    <div class="col-sm-6 col-md-4 col-lg-2">
							    <div class="package-card advanced-15k">
								    <div class="package-icon">
									    <img src="{{$settings->site_address}}/public/city/assets/img/plan-icons/15000.png" alt="Academy Pack 300">
								    </div>
								    <h3>Advanced</h3>
								    <p class="package-feature-list">
									    Academy Pack 4,500<br>

									    Trade Pool Deposit 10,500<br>

									    Leadership Program 7,500PV
								    </p>
								    <a href="register" class="btn btn-default">Start Now</a>
							    </div>
						    </div>
						    						    <div class="col-sm-6 col-md-4 col-lg-2">
							    <div class="package-card advanced-20k">
								    <div class="package-icon">
									    <img src="{{$settings->site_address}}/public/city/assets/img/plan-icons/20000.png" alt="Academy Pack 300">
								    </div>
								    <h3>Advanced</h3>
								    <p class="package-feature-list">
									    Academy Pack 6,000<br>

									    Trade Pool Deposit 14,000<br>

									    Leadership Program 10,000PV
								    </p>
								    <a href="register" class="btn btn-default">Start Now</a>
							    </div>
						    </div>
						    
					    
			    </div>
		    </div>
	    </div>


	    <div class="plan-block">

		    <div class="plan-title">
			    <div class="plan-title-underlay">Supreme</div>
			    <h1>Supreme Plans</h1>
		    </div>
		    <div class="container-fluid">

			    <div class="row justify-content-center">

				    						    <div class="col-sm-6 col-md-4 col-lg-2">
							    <div class="package-card supreme-30k">
								    <div class="package-icon">
									    <img src="{{$settings->site_address}}/public/city/assets/img/plan-icons/30000.png" alt="Academy Pack 300">
								    </div>
								    <h3>Supreme</h3>
								    <p class="package-feature-list">
									    Academy Pack 9,000<br>

									    Trade Pool Deposit 21,000<br>

									    Leadership Program 15,000PV
								    </p>
								    <a href="register" class="btn btn-default">Start Now</a>
							    </div>
						    </div>
						    						    <div class="col-sm-6 col-md-4 col-lg-2">
							    <div class="package-card supreme-40k">
								    <div class="package-icon">
									    <img src="{{$settings->site_address}}/public/city/assets/img/plan-icons/40000.png" alt="Academy Pack 300">
								    </div>
								    <h3>Supreme</h3>
								    <p class="package-feature-list">
									    Academy Pack 12,000<br>

									    Trade Pool Deposit 28,000<br>

									    Leadership Program 20,000PV
								    </p>
								    <a href="register" class="btn btn-default">Start Now</a>
							    </div>
						    </div>
						    						    <div class="col-sm-6 col-md-4 col-lg-2">
							    <div class="package-card supreme-50k">
								    <div class="package-icon">
									    <img src="{{$settings->site_address}}/public/city/assets/img/plan-icons/50000.png" alt="Academy Pack 300">
								    </div>
								    <h3>Supreme</h3>
								    <p class="package-feature-list">
									    Academy Pack 15,000<br>

									    Trade Pool Deposit 35,000<br>

									    Leadership Program 25,000PV
								    </p>
								    <a href="register" class="btn btn-default">Start Now</a>
							    </div>
						    </div>
						    						    <div class="col-sm-6 col-md-4 col-lg-2">
							    <div class="package-card supreme-70k">
								    <div class="package-icon">
									    <img src="{{$settings->site_address}}/public/city/assets/img/plan-icons/70000.png" alt="Academy Pack 300">
								    </div>
								    <h3>Supreme</h3>
								    <p class="package-feature-list">
									    Academy Pack 21,000<br>

									    Trade Pool Deposit 49,000<br>

									    Leadership Program 35,000PV
								    </p>
								    <a href="register" class="btn btn-default">Start Now</a>
							    </div>
						    </div>
						    						    <div class="col-sm-6 col-md-4 col-lg-2">
							    <div class="package-card supreme-100k">
								    <div class="package-icon">
									    <img src="{{$settings->site_address}}/public/city/assets/img/plan-icons/100000.png" alt="Academy Pack 300">
								    </div>
								    <h3>Supreme</h3>
								    <p class="package-feature-list">
									    Academy Pack 30,000<br>

									    Trade Pool Deposit 70,000<br>

									    Leadership Program 50,000PV
								    </p>
								    <a href="register" class="btn btn-default">Start Now</a>
							    </div>
						    </div>
						    
					    
			    </div>
		    </div>
	    </div>-->

    </div>
    <section class="ourActivity container-fluid">
	      <div class="container">
	          <div class="headline  wow fadeInDown" data-wow-duration="1s" data-wow-delay="0s" style="visibility: visible; animation-duration: 1s; animation-delay: 0s; animation-name: fadeInDown;"> Top Cryptocurrencies Prices  </div>
	            <div class="row">
	                
	                
	                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12  singlePrice">
	                    <script type="text/javascript" src="https://files.coinmarketcap.com/static/widget/currency.js"></script><div class="coinmarketcap-currency-widget" data-currencyid="1" data-base="USD" data-secondary="" data-ticker="true" data-rank="true" data-marketcap="true" data-volume="true" data-stats="USD" data-statsticker="false">      <div style="border:2px solid #e1e5ea;border-radius: 10px;font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif;min-width:285px;">        <div style="display:flex;padding:12px 0px;">          <div style="width:33%;display: flex;justify-content: center;align-items: center;"><img style="width:46px;height:46px;" src="https://s2.coinmarketcap.com/static/img/coins/64x64/1.png"></div>          <div style="width:67%;border: none;text-align:left;line-height:1.4">              <span style="font-size: 18px;"><a href="https://coinmarketcap.com/currencies/bitcoin/?utm_medium=widget&amp;utm_campaign=cmcwidget&amp;utm_source=sterlingtrustfund.com&amp;utm_content=bitcoin" target="_blank" style="text-decoration: none; color: rgb(16, 112, 224);">Bitcoin (BTC)</a></span> <br>              <span style="font-size: 16px;">                <span style="font-size: 20px; font-weight: 500;">60,951.75</span>                <span style="font-size: 14px; font-weight: 500;">USD</span>                <span style="margin-left:6px; font-weight: 500;"><span style="color:#d94040">(-7.03%)</span>                              </span>          </span></div>      </div><div style="border-top: 1px solid #e1e5ea;clear:both;">                  <div style="text-align:center;float:left;width:33%;font-size:12px;padding:12px 0;border-right:1px solid #e1e5ea;line-height:1em;">                      RANK                      <br><br>                      <span style="font-size: 18px; ">1</span>                  </div>                  <div style="text-align:center;float:left;width:33%;font-size:12px;padding:12px 0 16px 0;border-right:1px solid #e1e5ea;line-height:1em;">                      MARKET CAP                      <br><br>                      <span style="font-size: 16px; ">$1.15 T</span>                  </div>                  <div style="text-align:center;float:left;width:33%;font-size:12px;padding:12px 0 16px 0;line-height:1em;">                      VOLUME                      <br><br>                      <span style="font-size: 16px; ">$39.22 B</span>                  </div></div>  <div style="border-top: 1px solid #e1e5ea;text-align:center;clear:both;font-size:12px;font-style:italic;padding:8px 0;">      <a href="https://coinmarketcap.com?utm_medium=widget&amp;utm_campaign=cmcwidget&amp;utm_source=sterlingtrustfund.com&amp;utm_content=bitcoin" target="_blank" style="text-decoration: none; color: rgb(16, 112, 224);">Powered by CoinMarketCap</a>  </div></div></div>
	                </div>
	                
	                
	                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12  singlePrice">
	                       <script type="text/javascript" src="https://files.coinmarketcap.com/static/widget/currency.js"></script><div class="coinmarketcap-currency-widget" data-currencyid="2" data-base="USD" data-secondary="" data-ticker="true" data-rank="true" data-marketcap="true" data-volume="true" data-stats="USD" data-statsticker="false">      <div style="border:2px solid #e1e5ea;border-radius: 10px;font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif;min-width:285px;">        <div style="display:flex;padding:12px 0px;">          <div style="width:33%;display: flex;justify-content: center;align-items: center;"><img style="width:46px;height:46px;" src="https://s2.coinmarketcap.com/static/img/coins/64x64/2.png"></div>          <div style="width:67%;border: none;text-align:left;line-height:1.4">              <span style="font-size: 18px;"><a href="https://coinmarketcap.com/currencies/litecoin/?utm_medium=widget&amp;utm_campaign=cmcwidget&amp;utm_source=sterlingtrustfund.com&amp;utm_content=litecoin" target="_blank" style="text-decoration: none; color: rgb(16, 112, 224);">Litecoin (LTC)</a></span> <br>              <span style="font-size: 16px;">                <span style="font-size: 20px; font-weight: 500;">247.35</span>                <span style="font-size: 14px; font-weight: 500;">USD</span>                <span style="margin-left:6px; font-weight: 500;"><span style="color:#d94040">(-9.19%)</span>                              </span>          </span></div>      </div><div style="border-top: 1px solid #e1e5ea;clear:both;">                  <div style="text-align:center;float:left;width:33%;font-size:12px;padding:12px 0;border-right:1px solid #e1e5ea;line-height:1em;">                      RANK                      <br><br>                      <span style="font-size: 18px; ">14</span>                  </div>                  <div style="text-align:center;float:left;width:33%;font-size:12px;padding:12px 0 16px 0;border-right:1px solid #e1e5ea;line-height:1em;">                      MARKET CAP                      <br><br>                      <span style="font-size: 16px; ">$17.06 B</span>                  </div>                  <div style="text-align:center;float:left;width:33%;font-size:12px;padding:12px 0 16px 0;line-height:1em;">                      VOLUME                      <br><br>                      <span style="font-size: 16px; ">$3.31 B</span>                  </div></div>  <div style="border-top: 1px solid #e1e5ea;text-align:center;clear:both;font-size:12px;font-style:italic;padding:8px 0;">      <a href="https://coinmarketcap.com?utm_medium=widget&amp;utm_campaign=cmcwidget&amp;utm_source=sterlingtrustfund.com&amp;utm_content=litecoin" target="_blank" style="text-decoration: none; color: rgb(16, 112, 224);">Powered by CoinMarketCap</a>  </div></div></div>
	                </div>
	                
	                
	                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12  singlePrice">
	                   <script type="text/javascript" src="https://files.coinmarketcap.com/static/widget/currency.js"></script><div class="coinmarketcap-currency-widget" data-currencyid="1027" data-base="USD" data-secondary="" data-ticker="true" data-rank="true" data-marketcap="true" data-volume="true" data-stats="USD" data-statsticker="false">      <div style="border:2px solid #e1e5ea;border-radius: 10px;font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif;min-width:285px;">        <div style="display:flex;padding:12px 0px;">          <div style="width:33%;display: flex;justify-content: center;align-items: center;"><img style="width:46px;height:46px;" src="https://s2.coinmarketcap.com/static/img/coins/64x64/1027.png"></div>          <div style="width:67%;border: none;text-align:left;line-height:1.4">              <span style="font-size: 18px;"><a href="https://coinmarketcap.com/currencies/ethereum/?utm_medium=widget&amp;utm_campaign=cmcwidget&amp;utm_source=sterlingtrustfund.com&amp;utm_content=ethereum" target="_blank" style="text-decoration: none; color: rgb(16, 112, 224);">Ethereum (ETH)</a></span> <br>              <span style="font-size: 16px;">                <span style="font-size: 20px; font-weight: 500;">4,328.05</span>                <span style="font-size: 14px; font-weight: 500;">USD</span>                <span style="margin-left:6px; font-weight: 500;"><span style="color:#d94040">(-7.38%)</span>                              </span>          </span></div>      </div><div style="border-top: 1px solid #e1e5ea;clear:both;">                  <div style="text-align:center;float:left;width:33%;font-size:12px;padding:12px 0;border-right:1px solid #e1e5ea;line-height:1em;">                      RANK                      <br><br>                      <span style="font-size: 18px; ">2</span>                  </div>                  <div style="text-align:center;float:left;width:33%;font-size:12px;padding:12px 0 16px 0;border-right:1px solid #e1e5ea;line-height:1em;">                      MARKET CAP                      <br><br>                      <span style="font-size: 16px; ">$512.28 B</span>                  </div>                  <div style="text-align:center;float:left;width:33%;font-size:12px;padding:12px 0 16px 0;line-height:1em;">                      VOLUME                      <br><br>                      <span style="font-size: 16px; ">$22.33 B</span>                  </div></div>  <div style="border-top: 1px solid #e1e5ea;text-align:center;clear:both;font-size:12px;font-style:italic;padding:8px 0;">      <a href="https://coinmarketcap.com?utm_medium=widget&amp;utm_campaign=cmcwidget&amp;utm_source=sterlingtrustfund.com&amp;utm_content=ethereum" target="_blank" style="text-decoration: none; color: rgb(16, 112, 224);">Powered by CoinMarketCap</a>  </div></div></div>
	                </div>
	                
	                
	                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12  singlePrice">
	                   <script type="text/javascript" src="https://files.coinmarketcap.com/static/widget/currency.js"></script><div class="coinmarketcap-currency-widget" data-currencyid="1831" data-base="USD" data-secondary="" data-ticker="true" data-rank="true" data-marketcap="true" data-volume="true" data-stats="USD" data-statsticker="false">      <div style="border:2px solid #e1e5ea;border-radius: 10px;font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif;min-width:285px;">        <div style="display:flex;padding:12px 0px;">          <div style="width:33%;display: flex;justify-content: center;align-items: center;"><img style="width:46px;height:46px;" src="https://s2.coinmarketcap.com/static/img/coins/64x64/1831.png"></div>          <div style="width:67%;border: none;text-align:left;line-height:1.4">              <span style="font-size: 18px;"><a href="https://coinmarketcap.com/currencies/bitcoin-cash/?utm_medium=widget&amp;utm_campaign=cmcwidget&amp;utm_source=sterlingtrustfund.com&amp;utm_content=bitcoin cash" target="_blank" style="text-decoration: none; color: rgb(16, 112, 224);">Bitcoin Cash (BCH)</a></span> <br>              <span style="font-size: 16px;">                <span style="font-size: 20px; font-weight: 500;">623.57</span>                <span style="font-size: 14px; font-weight: 500;">USD</span>                <span style="margin-left:6px; font-weight: 500;"><span style="color:#d94040">(-7.70%)</span>                              </span>          </span></div>      </div><div style="border-top: 1px solid #e1e5ea;clear:both;">                  <div style="text-align:center;float:left;width:33%;font-size:12px;padding:12px 0;border-right:1px solid #e1e5ea;line-height:1em;">                      RANK                      <br><br>                      <span style="font-size: 18px; ">19</span>                  </div>                  <div style="text-align:center;float:left;width:33%;font-size:12px;padding:12px 0 16px 0;border-right:1px solid #e1e5ea;line-height:1em;">                      MARKET CAP                      <br><br>                      <span style="font-size: 16px; ">$11.79 B</span>                  </div>                  <div style="text-align:center;float:left;width:33%;font-size:12px;padding:12px 0 16px 0;line-height:1em;">                      VOLUME                      <br><br>                      <span style="font-size: 16px; ">$1.31 B</span>                  </div></div>  <div style="border-top: 1px solid #e1e5ea;text-align:center;clear:both;font-size:12px;font-style:italic;padding:8px 0;">      <a href="https://coinmarketcap.com?utm_medium=widget&amp;utm_campaign=cmcwidget&amp;utm_source=sterlingtrustfund.com&amp;utm_content=bitcoin cash" target="_blank" style="text-decoration: none; color: rgb(16, 112, 224);">Powered by CoinMarketCap</a>  </div></div></div>
	                </div>
	                
	                
	                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12  singlePrice">
	                   <script type="text/javascript" src="https://files.coinmarketcap.com/static/widget/currency.js"></script><div class="coinmarketcap-currency-widget" data-currencyid="131" data-base="USD" data-secondary="" data-ticker="true" data-rank="true" data-marketcap="true" data-volume="true" data-stats="USD" data-statsticker="false">      <div style="border:2px solid #e1e5ea;border-radius: 10px;font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif;min-width:285px;">        <div style="display:flex;padding:12px 0px;">          <div style="width:33%;display: flex;justify-content: center;align-items: center;"><img style="width:46px;height:46px;" src="https://s2.coinmarketcap.com/static/img/coins/64x64/131.png"></div>          <div style="width:67%;border: none;text-align:left;line-height:1.4">              <span style="font-size: 18px;"><a href="https://coinmarketcap.com/currencies/dash/?utm_medium=widget&amp;utm_campaign=cmcwidget&amp;utm_source=sterlingtrustfund.com&amp;utm_content=dash" target="_blank" style="text-decoration: none; color: rgb(16, 112, 224);">Dash (DASH)</a></span> <br>              <span style="font-size: 16px;">                <span style="font-size: 20px; font-weight: 500;">208.26</span>                <span style="font-size: 14px; font-weight: 500;">USD</span>                <span style="margin-left:6px; font-weight: 500;"><span style="color:#d94040">(-10.71%)</span>                              </span>          </span></div>      </div><div style="border-top: 1px solid #e1e5ea;clear:both;">                  <div style="text-align:center;float:left;width:33%;font-size:12px;padding:12px 0;border-right:1px solid #e1e5ea;line-height:1em;">                      RANK                      <br><br>                      <span style="font-size: 18px; ">71</span>                  </div>                  <div style="text-align:center;float:left;width:33%;font-size:12px;padding:12px 0 16px 0;border-right:1px solid #e1e5ea;line-height:1em;">                      MARKET CAP                      <br><br>                      <span style="font-size: 16px; ">$2.17 B</span>                  </div>                  <div style="text-align:center;float:left;width:33%;font-size:12px;padding:12px 0 16px 0;line-height:1em;">                      VOLUME                      <br><br>                      <span style="font-size: 16px; ">$386.98 M</span>                  </div></div>  <div style="border-top: 1px solid #e1e5ea;text-align:center;clear:both;font-size:12px;font-style:italic;padding:8px 0;">      <a href="https://coinmarketcap.com?utm_medium=widget&amp;utm_campaign=cmcwidget&amp;utm_source=sterlingtrustfund.com&amp;utm_content=dash" target="_blank" style="text-decoration: none; color: rgb(16, 112, 224);">Powered by CoinMarketCap</a>  </div></div></div>
	                </div>
	                
	                
	                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12  singlePrice">
	                      <script type="text/javascript" src="https://files.coinmarketcap.com/static/widget/currency.js"></script><div class="coinmarketcap-currency-widget" data-currencyid="74" data-base="USD" data-secondary="" data-ticker="true" data-rank="true" data-marketcap="true" data-volume="true" data-stats="USD" data-statsticker="false">      <div style="border:2px solid #e1e5ea;border-radius: 10px;font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif;min-width:285px;">        <div style="display:flex;padding:12px 0px;">          <div style="width:33%;display: flex;justify-content: center;align-items: center;"><img style="width:46px;height:46px;" src="https://s2.coinmarketcap.com/static/img/coins/64x64/74.png"></div>          <div style="width:67%;border: none;text-align:left;line-height:1.4">              <span style="font-size: 18px;"><a href="https://coinmarketcap.com/currencies/dogecoin/?utm_medium=widget&amp;utm_campaign=cmcwidget&amp;utm_source=sterlingtrustfund.com&amp;utm_content=dogecoin" target="_blank" style="text-decoration: none; color: rgb(16, 112, 224);">Dogecoin (DOGE)</a></span> <br>              <span style="font-size: 16px;">                <span style="font-size: 20px; font-weight: 500;">0.246866</span>                <span style="font-size: 14px; font-weight: 500;">USD</span>                <span style="margin-left:6px; font-weight: 500;"><span style="color:#d94040">(-5.75%)</span>                              </span>          </span></div>      </div><div style="border-top: 1px solid #e1e5ea;clear:both;">                  <div style="text-align:center;float:left;width:33%;font-size:12px;padding:12px 0;border-right:1px solid #e1e5ea;line-height:1em;">                      RANK                      <br><br>                      <span style="font-size: 18px; ">10</span>                  </div>                  <div style="text-align:center;float:left;width:33%;font-size:12px;padding:12px 0 16px 0;border-right:1px solid #e1e5ea;line-height:1em;">                      MARKET CAP                      <br><br>                      <span style="font-size: 16px; ">$32.62 B</span>                  </div>                  <div style="text-align:center;float:left;width:33%;font-size:12px;padding:12px 0 16px 0;line-height:1em;">                      VOLUME                      <br><br>                      <span style="font-size: 16px; ">$1.50 B</span>                  </div></div>  <div style="border-top: 1px solid #e1e5ea;text-align:center;clear:both;font-size:12px;font-style:italic;padding:8px 0;">      <a href="https://coinmarketcap.com?utm_medium=widget&amp;utm_campaign=cmcwidget&amp;utm_source=sterlingtrustfund.com&amp;utm_content=dogecoin" target="_blank" style="text-decoration: none; color: rgb(16, 112, 224);">Powered by CoinMarketCap</a>  </div></div></div>
	                </div>
	                
	                
	                
	            </div>
	      </div>
	</section>
        <div class="ace-trader-block">
            <h1>Become an Acetrader in 4 Steps</h1>
            <div class="ace-container">
                <div class="ace-trader-grid">

                    <div class="ace-grid-item step-1">
                        <div class="step-number">1</div>
                        <div class="step-content">
                            <h3>Register</h3>
                            Open your NonsensePoor script Account and join us. Only 1 minute and you're in. Enter the information you need to become a Prime Trader Fx investor and start right away.A wide selection of investment product to help build diversified portfolio
                        </div>
                    </div>

                    <div class="ace-grid-item  step-2">
                        <div class="step-number">2</div>
                        <div class="step-content">
                            <h3>Login</h3>
                            Confirm your info and complete your login. You can invest as much as you want starting from $50 to unlimited amount. Powerful trading tools, resources, insight and support
                        </div>
                    </div>

                    <div class="ace-grid-item  step-3">
                        <div class="step-number">3</div>
                        <div class="step-content">
                            <h3>Fund</h3>
                            Through Bitcoin payment, fund your account. Invest and sit back. You can follow your investment status at any time. Dedicated financial consultant to help reach your own specific goals
                        </div>
                    </div>


                    <div class="ace-grid-item  step-4">
                        <div class="step-number">4</div>
                        <div class="step-content">
                            <h3>Learn</h3>
                            Your investment is eligible to withdraw anytime, anyday. Specialized guidance from independent local advisor for hight-net-worth investors
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div class="testimonial-block">
            <h1>Testimonials</h1>
            <div class="">
                <div id="carouselExampleCaptions2" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="carousel-caption">
                                <p>This has been the most transparent and professional project we have ever been a part of. From the transparency of the owners, the trading operation, the Brokers and other partners, has been nothing but 100% across the board.
                                    We really are building a legacy company!.</p>
                                <p><strong>Luigi Bruni and Justin Halladay</strong></p>
                                <p>The Presidents Club</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="carousel-caption">
                                <p>I have been involved in 5 different opportunities in the last 20 years, and all 5 have not finished their road map, NonsensePoor script is so different in many ways, the directors are transparent about all aspects of the business, and
                                    we get paid exactly when they say we get paid, I LOVE this company and I look forward to a bright future for my team in my country.</p>
                                <p><strong>GAVIN NESBITT</strong></p>
                                <p>South Africa</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="carousel-caption">
                                <p>Hi…my name is lee O'Shea. Prior to starting this project I was extremely lethargic and having a difficult time to find myself financially. I literally had NO energy desire or passion to work online. Since starting with
                                    NonsensePoor script 7 months ago, I've got more money, more time than I know what to do with, I NEVER find a day, where i find myself not learning and earning and growing. The best part is…I now have found huge success financially
                                    and I get to enjoy learning how to trade and to be apart of fully automated trading with NonsensePoor script!! I now am so blessed to spend so much more time to play with my young kids, which is something I wasn't doing at all until
                                    joining NonsensePoor script
                                </p>
                                <p><strong>Lee O'Shea</strong></p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="carousel-caption">
                                <p>I saw a friend positing photos on a social media with a Porsche. I love cars so I was intrigued. I texted him to know what it was about. He showed me NonsensePoor script. I started my business in NonsensePoor script as a 500$ pack acetrader. I
                                    just closed my 3rd week with 1,200$ of commissions and a 2,000$ Pack. There's nothing like this in this sector. Weekly withdrawals, no monthly fees, online meetings with the traders, owners, top earners... The transparency
                                    is unequalled. Nothing comes close. What are you waiting for?
                                </p>
                                <p><strong>Normand Beaudry</strong></p>
                                <p>Canada</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="carousel-caption">
                                <p>My name is Arno Duijvesteijn and I joined NonsensePoor script from August 1th. I'm making this journey with my daughter Bianca. We started both with a $300 Package. I've now a 5K package and Bianca is having a 10K. Hopefully I will
                                    reach the rank Executive soon and Bianca will follow direct behind me. We have developed a strategy with several people in United States to have the best benefits of NonsensePoor script and that is working very well for me.</p>
                                <p><strong>Arno Duijvesteijn</strong></p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="carousel-caption">
                                <p>My name is MALA OZO ONAH, I joined NonsensePoor script this January 2020 and the experience with the company has been awesome, one of the things that entice me most in this company is their TRANSPARENCY,
                                    this is one of the best online company i have ever joined with good management team, wonderful and powerful leaders, good back office, powerful and sustainable marketing plan, prompt payment with easy withdrawals. Am
                                    looking forward to doing great business with NonsensePoor script now and many years to come. Am really proud to be a member of NonsensePoor script and will make sure that everyone I know in my country joins this company.</p>
                                <p><strong>MALACHY ONAH</strong></p>
                                <p>Germany</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="carousel-caption">
                                <p>Morning, everyone. I started last Friday. I received a fast Start bonus of $150, Uni-level bonus of $15 plus $20 on my trading pool, $185 in my first week. It works and I’m brand new.</p>
                                <p><strong>Tracker</strong></p>
                                <p>Zimbabwe</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="carousel-caption">
                                <p>I started on the 1st of January and as of today I have $208. Fast Start $120, Uni-level $27 and trading $61. I only bought a $300 package and I’m already getting ready to upgrade to a $500 package. It works. Couldn't be
                                    happier. Yes, will do. Very very happy with everything I’m seeing with NonsensePoor script. This will be the very first genuine, long term legacy business in the financial market which puts us in an incredible position to capitalise
                                    on the huge explosion that’s about to happen in the coming months. Happy days!
                                </p>
                                <p><strong>Kerry Strachan</strong></p>
                                <p>Zimbabwe</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="carousel-caption">
                                <p>I joined NonsensePoor script on the 08/08/2019 and started with $500. My account is now at $18,629. I also achieved a Leadership Rank of Executive and was paid $675 in Bitcoin. I am soon to achieve Manager and may either opt for the
                                    Rolex watch or the cash prize of $7,500. NonsensePoor script has seriously blown me away and it continues to get better.</p>
                                <p><strong>Shaun Grundlingh</strong></p>
                                <p>South Africa</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="carousel-caption">
                                <p>I want to share my testimonials also. I started with $300 pack and when I saw how this amazing company worked, I bought the 5k package and in the end of 2019 I have upgraded to at least 20k.</p>
                                <p><strong>Devo</strong></p>
                                <p>Norway</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="carousel-caption">
                                <p>I joined NonsensePoor script on the 26/07/2019 and started with $500 I am currently on the $10k package and my account is now at $21,830. I have achieved a Leadership Rank of Executive. I am soon to achieve Manager. NonsensePoor script has seriously
                                    blown me away!</p>
                                <p><strong>Luchia Van Den Berg</strong></p>
                                <p>South Africa</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="carousel-caption">
                                <p>My journey with NonsensePoor script started when my upline Cindy told me about it. I started with a $300 package and I’m already on a $1000 package all profits from NonsensePoor script. Been paid every Saturday without delay</p>
                                <p><strong>Willem Deale</strong></p>
                                <p>South Africa</p>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleCaptions2" role="button" data-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
                    <a class="carousel-control-next" href="#carouselExampleCaptions2" role="button" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
                </div>
            </div>
        </div>

        <div class="experience-block">
            <h1><strong> </strong><br> Refferral Commission</h1>
            <h1><strong> </strong><br> It Takes Friends
To Earn Even More!
Earn up to 10% commission every time your friends invest.</h1>
            <a class="btn btn-default btn-lg" href="{{$settings->site_address}}/public/register" title="Get Tickets to the Next Event">Signup Now!!!</a>
        </div>

        <div class="help-bar">
            Need Help? <a href="/contact" class="btn btn-light" style="color:#8abc56">Contact Us</a>
        </div>
        	<!-- START NEW HERO IMAGE HERE  --- ####################################################-->
	<div class="splash-container">
		<div class="splash-bg desktop">
			<video autoplay muted loop id="myVideo" style="width:100%;">
				<source src="https://cdn-a.cashfxgroup.com/videos/stock-market-trading-screen.mp4" type="video/mp4">
				<img src="{{$settings->site_address}}/public/city/assets/img/about-us-splash-new.jpg">
			</video>
		</div>

		<div class="splash-bg mobile">
			<img src="{{$settings->site_address}}/public/city/assets/img/about-us-splash-new-mobile.png">
		</div>
		<div class="splash-text">
			<h1>About Us</h1>
			<p>Something Different. Something New.</p>
		</div>
	</div>
	<!-- END  NEW HERO IMAGE HERE  --- ####################################################-->

	<div class="about-us">
		<div class="about">
			<div class="" style="margin-bottom: 30px;padding-top: 30px;">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-6" style="align-items: center;margin: auto;padding: 20px;">
							<img src="{{$settings->site_address}}/public/city/assets/img/primecert.jpeg" alt="Modules">
						</div>

						<div class="col-lg-6" style="align-items: center;margin: auto;">
							<h3 class="highlight">The NonsensePoor script Trade</h3>
							<p style="text-align: justify;"><span class="highlight">We are a group of passionate, independent thinkers who never stop exploring new ways to improve trading for the self-directed investor.</span>
							</p>
							<p style="text-align: justify;">Prime Trader Fx Inc is an award-winning broker focused on online foreign exchange and Contract for Difference (CFD) trading services. With our CFD products, you can do leveraged trading in global financial markets. Our mobile app and web-based trading platforms offer customers a superior experience, with competitive transaction costs, fast transaction execution and excellent customer service. With Prime Trader Fx, you can freely choose assets amongst forex, indices, commodities, shares and cryptocurrencies etc. and grasp trading opportunities under price fluctuations in the market. Prime Trader Fx is authorised and regulated by the Australian Securities and Investments Commission and holds an Company Financial Services Licence Company Number
(616129143) . All transactions and operations comply with the applicable Australian regulations.
							<p style="text-align: justify;">
NonsensePoor script is a great company that also gives a good referral commission to its investors. As an investor, if you invite someone with your referral link, you’ll earn 10% commission of any amount they deposited. You can earn more by referring your friends and family without even having active investment. The referral commission system is automatic. You can withdraw your referral commission immediately without waiting. Keep referring as you earn great!</p>
						</div>
					</div>
				</div>
			</div>
			<div class="" style="margin-top: 30px;">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-6">
							<p style="text-align: justify;"><span class="highlight">As a custom-designed and built online environment, the Academy of the future will also serve as the foundation of financial learning for hundreds of thousands of members worldwide.</span>
							</p>
							<p style="text-align: justify;">As the wealth divide between financial classes continues to expand, in western countries, it is becoming obvious that most people are not
								learning the very basics of understanding assets and asset management, opportunities that are available to them and using sound financial principles to create financial
								security for themselves and their families.</p>
							<p style="text-align: justify;">As an extension to the NonsensePoor script, large-scale global financial events are also planned to extend the opportunity for NonsensePoor script members to meet
								each other, develop friendships and learn from financial experts in a variety of critically important wealthy building subjects.</p>
						</div>
						<div class="col-lg-6" style="align-items: center;margin: auto;padding:10%;">
							<img src="{{$settings->site_address}}/public/city/assets/img/learn-and-earn.png" alt="Learn and Earn">
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="mission-block">

			<div class="about-us-stat-bar">
				<div class="container-fluid">
					<div class="row">
						<div class="d-none d-md-block" style="position: absolute;top: -15px;left: 25px; max-width: 40px;"><img src="{{$settings->site_address}}/public/city/assets/img/quotation.png" alt=""></div>
						<div class="d-block d-md-none" style="position: absolute;top: -10px;left: 15px; max-width: 15px;"><img src="{{$settings->site_address}}/public/city/assets/img/quotation.png" alt=""></div>
						<div class="col-md-12">
							<strong style="margin-bottom: 10px;">“I am learning from the Forex Market and it has<br>changed my life for the better...”</strong>
							<p><span class="highlight">Tuedor Akpevwe Jackson - CapeTown, South Africa</span></p>
						</div>
					</div>
				</div>

			</div>

			<div class="mission-block-content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-sm-4">
							<div class="misson-block-icon">
								<img src="{{$settings->site_address}}/public/city/assets/img/shield.png" alt="Shield">
							</div>
							<h3>Simplicity</h3>
							<p style="text-align: justify;">We focuses on user experience and the ease of use. We continue to optimise our platforms and services so our users–novice or experienced investors–will be able to grasp trading opportunities through our platform. See
								through our transparency, dive
								in
								from independent data, verifying partners, to easy-to-use, smartphone based WebTV tools for sharing your trading experience with others.</p>
						</div>

						<div class="col-sm-4">
							<div class="misson-block-icon">
								<img src="{{$settings->site_address}}/public/city/assets/img/purpose.png" alt="Target">
							</div>
							<h3>Transparency</h3>
							<p style="text-align: justify;">In order to allow our customers to fully benefit from a fair and efficient trading environment, Prime Trader Fx Inc follows a rigorous and transparent self-regulatory system. We provide a comprehensive and transparent platform that covers product information, price environment and data. All fees are listed clearly to ensure the entire service process is completely honest and transparent.. </p>
						</div>

						<div class="col-sm-4">
							<div class="misson-block-icon">
								<img src="{{$settings->site_address}}/public/city/assets/img/good.png" alt="Thumbs Up">
							</div>
							<h3>Responsible</h3>
							<p style="text-align: justify;">
All transactions involve risks, and Prime Trader Fx Inc takes steps to provide a responsible trading environment for its customers. Prime Trader Fx Inc is strictly regulated by the relevant regulatory bodies and follows operating standards with a high level of safety and stability. Our platform continues to provide tools for responsible trading, including risk management tools.</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="work-goals-block">
			<div class="work-goals-grid">
				<div class="left">
					<div class="our-work">
						<h1>Our Vision</h1>
						<p style="color:black;text-align: justify;">NonsensePoor script vision has always been of a full-service forex trading services, ranging from fully-automated participation in the forex market with the aid of  best  trading  experts with years of trading experience, combined with the introduction of latest & best Artificial intelligence (AI) technology used in top industries to produce high yeild efficiently for its members</p>

					</div>
					<div class="our-goals">
						<h1>Our Goals</h1>
						<p style="text-align: justify;">As the wealth divide between financial classes continues to expand, in western countries, it is becoming obvious that most people are not learning the very basics of understanding assets and asset management, opportunities that are available to them.with the  help of experts using sound financial principles to create financial security every economy can create passive wealth  for themselves and their families.
						
							As an extension to NonsensePoor script, large-scale global financial events are also planned to extend the opportunity for members to meet each other, develop friendships and learn from financial experts in a variety of critically important wealthy building subjects.</p>
						<a href="/academy" class="btn btn-light btn-lg" style="color:#8abc56">Go To The Trading Academy</a>
					</div>
				</div>
			<!--	<div class="right">
					<div style="position: relative;">
						<img class="d-none d-lg-block" src="{{$settings->site_address}}/public/city/assets/img/cheerfull-ladyv2.0.png" alt="Satisfied Member">
						<img class="d-block d-lg-none" src="{{$settings->site_address}}/public/city/assets/img/cheerfull-ladyv2.0.png" alt="Satisfied Member">
						<div class="d-none d-lg-block" style="position: absolute;top: 40px;right: 0;"><img src="{{$settings->site_address}}/public/city/assets/img/dots.png" style="width: 70px;" alt=""></div>
						<div class="d-none d-lg-block" style="position: absolute;top: 620px;right: 0;"><img src="{{$settings->site_address}}/public/city/assets/img/dots.png" style="width: 70px;" alt=""></div>
					</div>
				</div>-->
			</div>
		</div>
		<div class="about" style='background-position: right'>
			<div class="" style="padding-top: 80px;padding-bottom: 80px;">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-6" style="align-items: center;padding:0;">
							<img src="{{$settings->site_address}}/public/city/assets/img/stockbroker-in-shirt-is-working.png" alt="Trader">
						</div>

						<div class="col-lg-6" style="align-items: center;margin: auto;">
							<h1 class="highlight d-none d-xl-block" style="position: relative;font-size: 111px;font-weight: 900;line-height: 1;z-index: 2;">Copy Trading</h1>
							<h1 class="highlight d-none d-xl-none d-lg-none d-md-block"
							    style="position: relative;font-size: 60px;font-weight: 900;line-height: 1;z-index: 2;margin-top: 40px;margin-bottom: 40px;">Copy Trading</h1>
							<h1 class="highlight d-none d-xl-none d-lg-block d-md-none"
							    style="position: relative;font-size: 60px;font-weight: 900;line-height: 1;z-index: 2;margin-top: 40px;margin-bottom: 40px;">Copy<br>Trading</h1>
							<h1 class="highlight d-xl-none d-lg-none d-md-none d-sm-block"
							    style="position: relative;font-size: 40px;font-weight: 900;line-height: 1;z-index: 2;margin-top: 20px;margin-bottom: 20px;">Copy<br>Trading</h1>
							<div class="d-none d-xl-block" style="position: absolute;top: -20px;right: 80px; z-index: 1;"><img src="{{$settings->site_address}}/public/city/assets/img/alwayswin.png" style="width: 280px;" alt=""></div>
							<div class="d-none d-xl-none d-lg-none d-md-block" style="position: absolute;top: 10px;right: 60px; z-index: 1;"><img src="{{$settings->site_address}}/public/city/assets/img/alwayswin.png" style="width: 160px;"
							                                                                                                                      alt=""></div>
							<div class="d-none d-xl-none d-lg-block d-md-none" style="position: absolute;top: 10px;right: 60px; z-index: 1;"><img src="{{$settings->site_address}}/public/city/assets/img/alwayswin.png" style="width: 160px;"
							                                                                                                                      alt=""></div>
							<div class="d-xl-none d-lg-none d-md-none d-sm-block" style="position: absolute;top: 10px;right: 30px; z-index: 1;"><img src="{{$settings->site_address}}/public/city/assets/img/alwayswin.png"
							                                                                                                                         style="width: 100px;" alt=""></div>
							<h4 class="highlight mb-3">Always Win Strategy</h4>
							<p style="text-align: justify;"><span class="highlight">Copy Trading is an innovative tool used in the crypto market.</span></p>
							<p style="text-align: justify;">It can also be referred to as social trading and is accomplished by connecting an individual’s personal trading account to an authorized
								master trading account using the same broker.</p>
							<p style="text-align: justify;">Every forex trade made by the master account is immediately made in all connected individual accounts, all while individual trade capital
								remains in full control of each account holder.</p>
							<p style="text-align: justify;">For this reason, the tool is commonly known as “Copy Trading”.</p>
						</div>
						<div class="col-lg-12" style="text-align: center;margin: auto;">
							<h2 class="highlight mb-3 mt-5" style="font-weight: 700;">Advantages of access to successful Copy Trading</h2>
							<br>
							<p>There are two significant advantages to access of a successful Copy Trading master trader.</p>
							<br>
							<p><span style="font-weight: 700;">The first,</span> and most obvious is that the individual account holder is not required to do any trading activity themselves. One may
								participate in Copy Trading with absolutely no trading experience. The master account executes all trades.</p>
							<br>
							<p><span style="font-weight: 700;">The second,</span> significant advantage is if an individual has access to a highly skilled master account to do their Copy Trading for
								them. This is not as easy as one may think. Highly skilled traders and proven trade strategies are not easy to access. Trade history and experience are especially
								important.</p>
							<br>
							<p><span style="font-weight: 700;">This is undoubtedly the simplest way to receive signals and execute trades. To be connected, simply select a broker that offers Copy Trading, follow the proper broker registration process, fund your account, and connect your individual trading account to the master trading account wish to follow. Things in the crypto world don’t get any simpler than that.</span>
							</p>
							<br>
							<a href="/forex" class="btn btn-default btn-lg" style="color:#ffff">About Forex</a>

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="" style="background-color: #FFFFFF">
			<div class="" style="padding-top: 80px;">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-6" style="text-align: center;padding:0;margin-bottom: 20px;">
							<img src="{{$settings->site_address}}/public/city/assets/img/laptop_screen.png" style="width: 70%;" alt="Laptop">
						</div>

						<div class="col-lg-6" style="align-items: center;margin: auto;">
							<h4 class="highlight mb-3" style="font-weight: 700;">Who are the players?</h4>
							<div style="text-align: justify;display: flex;margin-top: 30px;margin-bottom: 20px;">
								<div style="width: 24px;margin-right: 30px;">
									<svg
											xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink"
											width="35px" height="31px">
										<path fill-rule="evenodd" fill="rgb(142, 190, 94)"
										      d="M32.986,1.045 C32.478,0.810 31.901,0.687 31.319,0.687 C30.148,0.687 29.045,1.189 28.433,1.998 L14.491,18.985 L6.783,13.172 C6.139,12.575 5.215,12.235 4.236,12.235 C3.501,12.235 2.802,12.423 2.212,12.781 C0.773,13.653 0.423,15.289 1.416,16.504 L12.248,29.762 C12.877,30.531 13.931,30.991 15.069,30.991 C15.123,30.991 15.178,30.990 15.233,30.988 C16.418,30.941 17.500,30.383 18.057,29.533 L34.305,4.728 C35.173,3.403 34.594,1.785 32.986,1.045 Z"/>
									</svg>
								</div>
								<div>The Forex/Crypto Market: The largest and most liquid financial market in the world.</div>
							</div>
							<div style="text-align: justify;display: flex;margin-bottom: 20px;">
								<div style="width: 24px;margin-right: 30px;">
									<svg
											xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink"
											width="35px" height="31px">
										<path fill-rule="evenodd" fill="rgb(142, 190, 94)"
										      d="M32.986,1.045 C32.478,0.810 31.901,0.687 31.319,0.687 C30.148,0.687 29.045,1.189 28.433,1.998 L14.491,18.985 L6.783,13.172 C6.139,12.575 5.215,12.235 4.236,12.235 C3.501,12.235 2.802,12.423 2.212,12.781 C0.773,13.653 0.423,15.289 1.416,16.504 L12.248,29.762 C12.877,30.531 13.931,30.991 15.069,30.991 C15.123,30.991 15.178,30.990 15.233,30.988 C16.418,30.941 17.500,30.383 18.057,29.533 L34.305,4.728 C35.173,3.403 34.594,1.785 32.986,1.045 Z"/>
									</svg>
								</div>
								<div>The Broker: The access point to the Crypto market.</div>
							</div>
							<div style="text-align: justify;display: flex;margin-bottom: 20px;">
								<div style="width: 24px;margin-right: 30px;">
									<svg
											xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink"
											width="35px" height="31px">
										<path fill-rule="evenodd" fill="rgb(142, 190, 94)"
										      d="M32.986,1.045 C32.478,0.810 31.901,0.687 31.319,0.687 C30.148,0.687 29.045,1.189 28.433,1.998 L14.491,18.985 L6.783,13.172 C6.139,12.575 5.215,12.235 4.236,12.235 C3.501,12.235 2.802,12.423 2.212,12.781 C0.773,13.653 0.423,15.289 1.416,16.504 L12.248,29.762 C12.877,30.531 13.931,30.991 15.069,30.991 C15.123,30.991 15.178,30.990 15.233,30.988 C16.418,30.941 17.500,30.383 18.057,29.533 L34.305,4.728 C35.173,3.403 34.594,1.785 32.986,1.045 Z"/>
									</svg>
								</div>
								<div>Individual Account: A membership connecting to a Master Copy Trade account.</div>
							</div>
							<div style="text-align: justify;display: flex;margin-bottom: 20px;">
								<div style="width: 24px;margin-right: 30px;">
									<svg
											xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink"
											width="35px" height="31px">
										<path fill-rule="evenodd" fill="rgb(142, 190, 94)"
										      d="M32.986,1.045 C32.478,0.810 31.901,0.687 31.319,0.687 C30.148,0.687 29.045,1.189 28.433,1.998 L14.491,18.985 L6.783,13.172 C6.139,12.575 5.215,12.235 4.236,12.235 C3.501,12.235 2.802,12.423 2.212,12.781 C0.773,13.653 0.423,15.289 1.416,16.504 L12.248,29.762 C12.877,30.531 13.931,30.991 15.069,30.991 C15.123,30.991 15.178,30.990 15.233,30.988 C16.418,30.941 17.500,30.383 18.057,29.533 L34.305,4.728 C35.173,3.403 34.594,1.785 32.986,1.045 Z"/>
									</svg>
								</div>
								<div>Master Account: Access to professional traders and or proprietary trade signals/technology to perform success trade activity.</div>
							</div>
						</div>
						<div class="col-lg-12" style="text-align: center;margin: auto;">
							<h2 class="highlight mb-3 mt-5" style="font-weight: 700;">What is an EA and how do they work?</h2>
							<br>
							<p>Sometimes referred to as bots, properly referred to within the industry as Expert Advisors. EAs are dedicated software comprised of algorithms and mathematical formulas
								capable of doing everything from analyzing the financial markets to executing trades.</p>
							<br>
							<p>A successful EA may perform these functions more effectively than live traders, since they are loaded with functions that make them verify, consult, and analyze hundreds
								of scenarios simultaneously. They can execute trades faster resulting in a higher volume of successful trades.</p>
							<br>
							<br>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="headquarters-block" style="background-color: #f5f5f5;background-image: none;">

		<div class="headquarters-container">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12" style="text-align: center;">
						<img src="{{$settings->site_address}}/public/city/assets/img/headquarters.png" style="width: 50%;" alt="Headquarters">
						<p style="margin-top: 60px;">With more than 10,000 sqm available, these offices were purposefully designed to enable small and medium-size classes year-round to hone skills
							from the forex curriculum. Many elements of the Supreme Series will benefit from 1 on 1 and group class-room time to master.</p>
						<p>The Australian office has space available for up to 150 students to meet in a class setting.</p>
					</div>
				</div>
			</div>
		</div>
	<!--	<div class="headquarters-grid">
			<div class="office-pic"><img src="{{$settings->site_address}}/public/city/assets/img/office1.png" alt="NonsensePoor script Headquarters picture one"></div>
			<div class="office-pic"><img src="{{$settings->site_address}}/public/city/assets/img/office2.png" alt="NonsensePoor script Headquarters picture two"></div>
			<div class="office-pic"><img src="{{$settings->site_address}}/public/city/assets/img/office3.png" alt="NonsensePoor script Headquarters picture three"></div>
		</div>-->
		<div class="headquarters-container">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12" style="text-align: center;">
						<h3>Our Office is located in BONDI 2026 New South Wales Australia.</h3>
						<p style="margin-bottom: 0"><strong><a href="https://opencorporates.com/companies/au/616129143">Prime Trader Fx</a></strong> - BONDI 2026 New South Wales Australia.</p>
						<p style="margin-top: 0"> We are a Australian based company under registration Company Number #616129143.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
      
     

      
  


@endsection