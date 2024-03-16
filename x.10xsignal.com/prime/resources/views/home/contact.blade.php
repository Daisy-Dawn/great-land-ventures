@extends('layouts.base')

@section('title', 'Contact us')

@inject('content', 'App\Http\Controllers\FrontController')
@section('content')

<!-- =============================Wrapper========================================================== -->
<section class="container-fluid bg-contact-us">
          <div class="row">
            <div class="col-6 abt-us-txt">
              <h2> Contact Us</h2>
            </div>

            <div class="col-6">
              <img class="flying-man" src="{{$settings->site_address}}/public/images/contact-us.png">
            </div>
          </div>

          <!-- the body section that contain the text =============== -->
          
        </section>
         <div class="container abt-p-txt">
          <div class="row">
            <div class="col-md-8 col-sm-12">

              <form  method = "post" action=" ">

                <div>
                  <select class="form-control" id="select"name ="question">
                <option value = " Trading Question">Trading Question</option>
                <option value = " Finance Question">Finance Question</option>
                <option value = " Technical Question">Technical Question</option>
              </select>
                </div>
                <br />
                <div class="row">
                   <div class="form-group col-md-6 col-sm-12">
                  <input type="text" class="form-control" id="name" placeholder="  Name" name ="name" required="">
                </div>

                <div class="form-group col-md-6 col-sm-12">
                  <input type="text" class="form-control" id="email" aria-describedby="emailHelp" placeholder="  Email" name ="email" required="">
                </div>
                </div>  
           

            <div class="form-group col-md-12 col-sm-12">
              <textarea class="form-control"placeholder="Message" name ="message" required=""></textarea>
            </div>
           
            <button type="submit" class="btn btn-primary" id="submit" name = "submit">Submit</button>
          </form>

                          
            </div>
            <!-- end col -->
            <div class="col-md-4">
              <div class="col col-contact-side">
                <i class="fas fa-home col-contact-side-i"></i>
                 <b> ADDRESS: </b>
                 <p>{{$content->getContent('EgiMcm','description')}}</p>
              </div>

              <!-- ===== -->

              <div class="col col-contact-side">
                <i class="fas fa-envelope col-contact-side-i"></i>
                 <b> EMAIL ADDRESS: </b>
                 <p class="green"> {{$settings->contact_email}}</p>
              </div>
              
            </div>
            
          </div>
            
          </div>
          <div style="padding: 20px;"></div>
          
    


    



@endsection