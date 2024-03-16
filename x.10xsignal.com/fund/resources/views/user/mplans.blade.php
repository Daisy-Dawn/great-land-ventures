<?php
	if (Auth::user()->dashboard_style == "light") {
		$bgmenu="blue";
    $bg="light";
    $text = "dark";
} else {
    $bgmenu="dark";
    $bg="dark";
    $text = "light";

}
?> 
@extends('layouts.app')
    @section('content')
        @include('user.topmenu')
        @include('user.sidebar')
		<div class="main-panel bg-{{$bg}}">
			<div class="content bg-{{$bg}}">
				<div class="page-inner">
					<div class="mt-2 mb-4">
						<h1 class="title1 text-{{$text}}">Available packages</h1>
					</div>
					<x-danger-alert/>
					<x-success-alert/>
					<div class="mb-5 row">
						@forelse ($plans as $plan)
						<div class="col-lg-4">
							<div class="pricing-table card purple bg-{{$bg}} shadow p-4">
								<!-- Table Head -->
								{{-- <div class="pricing-label d-inline">Plan name</div> --}}
								<h2 class="text-{{$text}}">{{$plan->name}}</h2>
								<!-- Price -->
								<!--<div class="price-tag p-3 border-bottom row">-->
								<!--	<span class="symbol text-{{$text}}">{{$settings->currency}}</span>-->
								<!--	<span class="amount text-{{$text}}">{{number_format($plan->price)}}</span>-->
								<!--</div>-->
								<!-- Features -->
								
								<div class="pricing-features ">
								    <div class="feature text-{{$text}} p-3 border-bottom row d-flex justify-content-center  "> {{$plan->increment_amount}} % ROI  <span class="text-{{$text}}"> </span></div>
								    
								    <div class="feature text-{{$text}} p-3 border-bottom row d-flex justify-content-center">Daily for {{$plan->expiration}} Days</div>
								    
									<div class="feature text-{{$text}} p-3 border-bottom row d-flex justify-content-center">Minimum Investment - <span class="text-{{$text}}">   {{$settings->currency}}{{number_format($plan->min_price)}}</span></div>
									<div class="feature text-{{$text}} p-3 border-bottom row d-flex justify-content-center">Maximum Investment - <span  class="text-{{$text}}">{{$settings->currency}}{{$plan->max_price}}</span></div>
									<div class="feature text-{{$text}} p-3  row d-flex justify-content-center">Total <?php echo $plan->increment_amount*6 ."%"?> + Capital  </div>
									
								
								</div> <br>
								<!-- Button -->
								<div class="">
									<form method="post" action="{{route('joinplan')}}">
										
										<input type="number" min="{{$plan->min_price}}" max="{{$plan->max_price}}" name="iamount" placeholder="             {{$settings->currency}} {{$plan->min_price}} - {{$settings->currency}} {{$plan->max_price}} " class="form-control text-{{$text}} bg-{{$bg}}"> <br>
										<input type="hidden" name="duration" value="{{$plan->expiration}}">
										<input type="hidden" name="id" value="{{ $plan->id }}">
										<input type="hidden" name="_token" value="{{ csrf_token() }}">
										<input type="submit" class="btn btn-block pricing-action btn-primary" value="Join plan" >
									</form>
									
									
								</div>
							</div>
						</div>
						
						
						@empty
						<div class="col-lg-4">
							<div class="pricing-table card purple border bg-{{$bg}} p-4">
								<h4 class="text-{{$text}}">No Investment Plan at the moment.</h4>
							</div>
						</div>
						@endforelse
						
						
					</div>
					<div class="mb-3 row">
                    <div class="p-1 shadow-lg col-md-4 bg-primary">
                        <h1 class="text-white"> We Offer 10% Refferal Commissions </h1>
                    </div>
                    
                  
                </div>
				</div>	
				
			</div>
    @endsection