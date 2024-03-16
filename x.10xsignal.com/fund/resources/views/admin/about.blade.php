<?php
if (Auth('admin')->User()->dashboard_style == "light") {
    $text = "dark";
} else {
    $text = "light";
}
?>
@extends('layouts.app')
    @section('content')
        @include('admin.topmenu')
        @include('admin.sidebar')
        <div class="main-panel bg-{{Auth('admin')->User()->dashboard_style}}">
            <div class="content">
                <div class="page-inner">
                    <div class="mt-2 mb-4">
                    
                    </div>
                    <x-danger-alert/>
                    <x-success-alert/>
        
                    <div class="mb-5 row">
                        <div class="col-12 p-4 card shadow bg-{{Auth('admin')->User()->dashboard_style}}">
                            <h1 class="title1 text-{{$text}}">About Don-T </h1>
                            <p class="title1 text-{{$text}}"> Contact Us Today For customization and more designs and product </p>
                            <div>
							<p> For Help More scripts, designs and customization contact us below </p>
							
							<p> We have all kinds of script for your online work.</p>
							<ol>
							    <li> Banking script</li>
							    <li> Investment script (Hyip) (Bitcoin investment websites)</li>
							    
							    <li>Military application for military hustle</li>
							    <li> Courier website etc.</li>
							</ol>
                                <small class="text-info"></small>
							</div>
                            <div class="mt-4">
                                <a href="https://wa.link/4l0drz" target="_blank" class="btn btn-primary"> Add me on WhatSapp</a>
                            </div>
                            
                            
                            <div class="mt-4">
                                <h1> WhatSapp</h1>
                               <h2> +13175521411</h2>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>   
            </div>
    @endsection