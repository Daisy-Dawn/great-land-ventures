<?php include 'header.php';
// define variables and set to empty values
$nameErr = $emailErr = $genderErr = $websiteErr = "";
$name = $email = $gender = $comment = $website = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if (empty($_POST["fullname"])) {
    $nameErr = "Full name is required";
  } else {
    $name = test_input($_POST["fullname"]);
    // check if name only contains letters and whitespace
    if (!preg_match("/^[a-zA-Z-' ]*$/",$name)) {
      $nameErr = "Only letters and white space allowed";
    }
  }
  
  if (empty($_POST["email"])) {
    $emailErr = "Email is required";
  } else {
    $email = test_input($_POST["email"]);
    // check if e-mail address is well-formed
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
      $emailErr = "Invalid email format";
    }
  };
    
 if (empty($_POST["subject"])) {
    $comment = " ";
  } else {
    $comment = test_input($_POST["subject"]);
  };

  if (empty($_POST["message"])) {
    $comment = " ";
  } else {
    $comment = test_input($_POST["message"]);
  }

  
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}

?>
  <body id="body">
    <!--
Fixed Navigation
==================================== -->

    <section
      style="background-color: #176e4c !important"
      class="top-header wow fadeInTop"
      data-wow-duration="2s"
    >
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div
              style="
                background-color: #176e4c;
                color: rgba(255, 255, 255, 0.8) !important;
              "
            >
              <div
                style="
                  float: left;
                  font-family: 'Montserrat', sans-serif;
                  font-weight: bold;
                  font-size: 14px;
                  padding-bottom: 5px;
                "
              >
                <span class="" style="margin-right: 10px"
                  ><img src="images/icons/email.png" />
                  <a
                    href="mailto:support@profitfxchain.com"
                    style="
                      color: rgba(255, 255, 255, 0.8);
                      font-family: 'Montserrat', sans-serif;
                      font-weight: bold;
                    "
                  >
                    support@profitfxchain.com</a
                  >
                </span>
                <!-- <span style="font-family: 'Montserrat', sans-serif;">
                  <span class=""><img src="images/icons/phone.png"></span> For VIP members Only
                </span> -->
              </div>
              <div
                style="
                  float: right;
                  font-family: 'Montserrat', sans-serif;
                  font-size: 14px;
                "
              >
                <span class="fa fa-sign-in"></span>
                <span style="margin-right: 10px"
                  ><a
                    style="color: rgba(255, 255, 255, 0.8); font-weight: bold"
                    href="fund/login"
                    >SIGN IN</a
                  ></span
                >
                <span class="fa fa-user-plus"></span>
                <span style="margin-right: 10px"
                  ><a
                    style="color: rgba(255, 255, 255, 0.8); font-weight: bold"
                    href="fund/register"
                    >SIGN UP</a
                  ></span
                >

                <div style="float: right" id="google_translate_element"></div>

                <script type="text/javascript">
                  function googleTranslateElementInit() {
                    new google.translate.TranslateElement(
                      {
                        pageLanguage: "en",
                        layout:
                          google.translate.TranslateElement.InlineLayout.SIMPLE,
                      },
                      "google_translate_element"
                    );
                  }
                </script>

                <script
                  type="text/javascript"
                  src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"
                ></script>

                <script
                  type="text/javascript"
                  src="htpps://translate.google.com/translate_a/elementa0d8.js?cb=googleTranslateElementInit"
                ></script>
              </div>
              <div style="clear: both"></div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section
      style="font-weight: lighter; font-family: 'Montserrat', sans-serif"
      id="toper"
      class="header navigation wow fadeInDown"
      data-wow-duration="2s"
    >
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <nav class="navbar navbar-expand-md">
              <a class="navbar-brand" href="/">
                <img src="images/logo.png" alt="logo" width="150px" />
              </a>
              <button
                style="color: #fff"
                class="navbar-toggler"
                type="button"
                data-toggle="collapse"
                data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation"
              >
                <span class="tf-ion-android-menu"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul
                  style="text-transform: uppercase"
                  class="navbar-nav ml-auto"
                >
                  <li class="nav-item">
                    <a class="nav-link" href="/">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="pricing">Account Type</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="faq">F.A.Q</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="terms">Terms</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="contact">Contact Us</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="about">About Us</a>
                  </li>
                </ul>
              </div>
            </nav>
          </div>
        </div>
      </div>
    </section>

    <section>
      <div
        style="
          background-image: url('images/icons/slider.jpg');
          color: #fff;
          vertical-align: baseline;
          border-top: 8px solid #2c3e50;
          border-bottom: 5px solid #efd777;
        "
        class=""
      >
        <div class="row">
          <div class="col-md-12">
            <div
              style="
                padding: 60px 30px 60px 30px;
                box-sizing: border-box !important;
              "
              class="hdcont"
            >
              <h1 style="font-family: 'Roboto Condensed', sans-serif">
                CONTACT US
              </h1>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="contact-us section bg-gray" id="contact">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="title text-center">
              <p>
                Do you have a question or want to share your feedback with us?
                <br />You are welcome to contact us in one of the following
                ways:
              </p>
            </div>
          </div>
        </div>
        <div class="row">
          <!-- Contact Form -->
          <div class="contact-form col-12 col-md-6 mx-auto">
            <form id="contact-form" method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" role="form">
              <div class="form-group">
                <input
                  type="text"
                  placeholder="Your Name"
                  class="form-control"
                  name="fullname"
                  required=""
                />
                <span><?php echo $nameErr ?></span>
              </div>

              <div class="form-group">
                <input
                  type="email"
                  placeholder="Your Email"
                  class="form-control"
                  name="email"
                 
                />
                 <span><?php echo $emailErr ?></span>
              </div>

              <div class="form-group">
                <input
                  type="text"
                  placeholder="Subject"
                  class="form-control"
                  name="subject"
                  required=""
                />
              </div>

              <div class="form-group">
                <textarea
                  rows="6"
                  placeholder="Message"
                  class="form-control"
                  name="message"
                  required=""
                ></textarea>
              </div>

              <span class="loaderIcon4"></span>

              <div id="cf-submit">
                <input
                  type="submit"
                  name="send"
                  id="contact_us"
                  class="btn btn-success"
                  value="Submit"
                />
              </div>
            </form>
          </div>
          <!-- ./End Contact Form -->

          <div
            class="col-md-6"
            style="border-left: 1px solid #ccc; padding-left: 5px"
          >
            <div class="platform_box">
              <i class="material-icons fa fa-map-marker"></i>
              <h6>Address</h6>
              <span>
                66 Great Suffolk Street, London, United Kingdom, SE1 0BL
              </span>
            </div>
            <div class="platform_box">
              <i class="material-icons fa fa-envelope"></i>
              <h6>Email Address</h6>
              <span> support@profitfxchain.com</span>
            </div>
            <div class="platform_box">
              <i class="material-icons fa fa-phone"></i>
              <h6>Phone Number</h6>
              <span>+1 (980)*****</span>
            </div>
          </div>
        </div>
        <!-- end row -->
      </div>
      <!-- end container -->
    </section>
    <!-- end section -->

    <section>
      <div>
        <iframe
          src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2483.561298552872!2d-0.10364508431731415!3d51.5029175796343!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x487604a5bdc3957d:0xbbde149c43327d39!2s66+Great+Suffolk+St,+London+SE1+0BL,+UK!5e0!3m2!1sen!2sin!4v1531478364104"
          width="100%"
          height="545px"
          frameborder="0"
          style="border: 0"
          allowfullscreen=""
        ></iframe>
      </div>
    </section>

    <section class="" style="background-color: #062b1f; padding-top: 80px">
      <div class="container">
        <div class="row" style="">
          <div class="number col-md-3" id="amk_footer">
            <div class="wow bounce" data-wow-duration="2s">
              <img src="images/footer-ribbon.png" style="max-width: 100%" />
              <p
                style="
                  font-family: 'Roboto Slab', sans-serif;
                  text-align: center;
                  margin-top: 20px;
                  color: #d5d5d5;
                  font-size: 12px;
                  font-weight: 300;
                "
              >
                A FIRM FOR CRYPTO CURRENCY INVESTMENT SOLUTION
              </p>
            </div>
          </div>

          <div class="number col-md-4" id="amk_footer">
            <div
              class="amk_fBox2 amk_left wow bounce"
              data-wow-duration="2s"
              style=""
            >
              <h3 text-align:="" left;="">Quick Links</h3>
              <ul>
                <li>
                  <a href="/">Home</a>
                </li>

                <li><a href="about">About us</a></li>
                <li><a href="faq">FAQs</a></li>
                <li><a href="terms">Terms</a></li>
                <li><a href="contact">Contact Us</a></li>
              </ul>
            </div>
          </div>

          <div class="number col-md-5" id="amk_footer">
            <div class="amk_fBox3 amk_right wow bounce" data-wow-duration="2s">
              <h3>Contact Information</h3>
              <ul>
                <li>
                  <h4>Website Address</h4>
                  <p style="text-transform: lowercase"></p>
                </li>
                <!-- <li>
          <h4>Telephone Number</h4>
          <p>Available for VIP members</p>
        </li>
         -->
                <li>
                  <h4>Email</h4>
                  <p style="text-transform: lowercase">
                    support@profitfxchain.com
                  </p>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <!-- End container -->
    </section>
    <!-- End section -->
    <section class="call-to-action section-sm" style="background-color: #fff">
      <div class="container">
        <div class="row">
          <div
            class="col-md-12 wow wobble"
            id="amk_footis"
            data-wow-duration="2s"
          >
            <h3>PAYMENT METHOD</h3>
            <!-- <h3 style="text-transform: uppercase; font-family: Montserrat, sans-serif; color: #000; font-weight: bold; text-align: center;">PAYMENT METHOD <span style="color: #ff0000">WE ACCEPT</span></h3>
        <div><center><hr style="width: 30%; border: 2px solid #ff0000"></center></div> -->
          </div>
        </div>
        <div class="row" style="margin-top: 0px">
          <div class="col-md-12 text-center">
            <div class="row">
              <div
                class="col-md-12 variable slider wow tada"
                data-wow-duration="2s"
                style="
                  margin-top: 0px !important;
                  margin-bottom: 0px !important;
                "
              >
                <div class="kis355" id="kis355">
                  <img
                    class="p-say2"
                    src="images/aa1.png"
                    alt="western union"
                  />
                </div>
                <div class="kis355" id="kis355">
                  <img
                    class="p-say2"
                    src="images/aa2.jpg"
                    alt="wire transfer"
                  />
                </div>
                <div class="kis355" id="kis355">
                  <img class="p-say2" src="images/aa3.jpg" alt="visa card" />
                </div>
                <div class="kis355" id="kis355">
                  <img class="p-say2" src="images/aa4.jpg" alt="master card" />
                </div>
                <div class="kis355" id="kis355">
                  <img class="p-say2" src="images/aa5.jpg" alt="moneygram" />
                </div>
                <div class="kis355" id="kis355">
                  <img
                    class="p-say2"
                    src="images/1541730479h7.jpg"
                    alt="bitcoin logo"
                  />
                </div>

                <div class="kis355" id="kis355">
                  <img
                    class="p-say2"
                    src="profitfxchain/images/59f809c931cb0.png"
                    alt="western union"
                  />
                </div>
                <div class="kis355" id="kis355">
                  <img
                    class="p-say2"
                    src="images/1515746172h7.jpg"
                    alt="wire transfer"
                  />
                </div>
                <div class="kis355" id="kis355">
                  <img
                    class="p-say2"
                    src="images/1508826560h4.jpg"
                    alt="visa card"
                  />
                </div>
                <div class="kis355" id="kis355">
                  <img
                    class="p-say2"
                    src="images/1508826576h5.jpg"
                    alt="master card"
                  />
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- End row -->
      </div>
      <!-- End container -->
    </section>
    <!-- End section -->
<?php include 'footer.php'?>