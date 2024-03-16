 <footer
      style="background-color: #062b1f !important"
      id="footer"
      class="bg-one"
    >
      <div class="footer-bottom">
        <h5>© Copyright Profitfxchain. All right reserved.</h5>
      </div>
    </footer>
    <!-- end footer -->
    <div></div>

    <!-- end Footer Area
    ========================================== -->

    <!-- 
    Essential Scripts
    =====================================-->



    <!-- Main jQuery -->
    <!--<script src="plugins/jquery/dist/jquery.min.js"></script>-->
      <script
    type="text/javascript"
    src="resources1/views/home/home4/alert/js/jquery-3.2.1.min.js"
  ></script>
    <!-- Bootstrap 3.7 -->
    <!-- <script src="plugins/bootstrap/dist/js/popper.min.js"></script> -->
    <script src="plugins/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Owl Carousel -->
    <!-- Smooth Scroll js -->
    <script src="plugins/smooth-scroll/dist/js/smooth-scroll.min.js"></script>

    <!-- Custom js -->
    <script src="js/script.js"></script>
    <script src="particles.js-master/particles.js"></script>
    <script src="particles.js-master/demo/js/app.js"></script>
    <script src="slick/slick/slick.js"></script>
    <script src="wowmaster/dist/wow.js"></script>
    <!-- Revolution Slider -->
    <script
      type="text/javascript"
      src="revolution/js/jquery.themepunch.tools.min.js"
    ></script>
    <script
      type="text/javascript"
      src="revolution/js/jquery.themepunch.revolution.min.js"
    ></script>
    <script type="text/javascript" src="revolution/js/slider_v1.js"></script>

    <!-- SLIDER REVOLUTION 5.0 EXTENSIONS  (Load Extensions only on Local File Systems !  The following part can be removed on Server for On Demand Loading) -->
    <script
      type="text/javascript"
      src="revolution/js/extensions/revolution.extension.actions.min.js"
    ></script>
    <script
      type="text/javascript"
      src="revolution/js/extensions/revolution.extension.carousel.min.js"
    ></script>
    <script
      type="text/javascript"
      src="revolution/js/extensions/revolution.extension.kenburn.min.js"
    ></script>
    <script
      type="text/javascript"
      src="revolution/js/extensions/revolution.extension.layeranimation.min.js"
    ></script>
    <script
      type="text/javascript"
      src="revolution/js/extensions/revolution.extension.migration.min.js"
    ></script>
    <script
      type="text/javascript"
      src="revolution/js/extensions/revolution.extension.navigation.min.js"
    ></script>
    <script
      type="text/javascript"
      src="revolution/js/extensions/revolution.extension.parallax.min.js"
    ></script>
    <script
      type="text/javascript"
      src="revolution/js/extensions/revolution.extension.slideanims.min.js"
    ></script>
    <script
      type="text/javascript"
      src="revolution/js/extensions/revolution.extension.video.min.js"
    ></script>

    <script>
      $(document).ready(function () {
        // slick slider
        $(".variable").slick({
          dots: false,
          arrows: false,
          infinite: true,
          variableWidth: true,
          slidesToShow: 3,
          slidesToScroll: 1,
          autoplay: true,
          autoplaySpeed: 1000,
        });

        // end of slick slider

        // ****counter****

        var counters = $(".countis");
        var countersQuantity = counters.length;
        var counter = [];

        for (i = 0; i < countersQuantity; i++) {
          counter[i] = parseInt(counters[i].innerHTML);
        }

        var count = function (start, value, id) {
          var localStart = start;
          setInterval(function () {
            if (localStart < value) {
              localStart++;
              counters[id].innerHTML = localStart;
            }
          }, 1);
        };

        for (j = 0; j < countersQuantity; j++) {
          count(0, counter[j], j);
        }
        // end of counter

        // end of view port detector
        // $('#toper').css("position", "sticky");
        // $('#toper').css("margin-top", "0px");
        // $('#toper').css("top", "0");
        // $('#toper').css("z-index", "1000");

        // position: sticky; top: 0; margin-top: 0px; z-index: 1000
      });
    </script>

    <script>
      wow = new WOW({
        animateClass: "animated",
        offset: 100,
        callback: function (box) {
          console.log("WOW: animating <" + box.tagName.toLowerCase() + ">");
        },
      });
      wow.init();
      document.getElementById("moar").onclick = function () {
        var section = document.createElement("section");
        section.className = "section--purple wow fadeInDown";
        this.parentNode.insertBefore(section, this);
      };
    </script>


<!-- GetButton.io widget -->
<script type="text/javascript">
    (function () {
        var options = {
            whatsapp: "+131755213456", // WhatsApp number
            call_to_action: "Message us", // Call to action
            button_color: "#FF6550", // Color of button
            position: "right", // Position may be 'right' or 'left'
        };
        var proto = 'https:', host = "getbutton.io", url = proto + '//static.' + host;
        var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = url + '/widget-send-button/js/init.js';
        s.onload = function () { WhWidgetSendButton.init(host, proto, options); };
        var x = document.getElementsByTagName('script')[0]; x.parentNode.insertBefore(s, x);
    })();
</script>
<!-- /GetButton.io widget -->
  


<!-- ========== Copy Here to your script footer before the (/body Tag ) ========== -->

  <!-- Fake Notifications jQuery plugin -->
  <script
    type="text/javascript"
    src="resources1/views/home/home4/alert/js/jquery.fake-notification.min.js"
  ></script>

  <!-- Fake Notifications invoke -->
  <script>
    $(document).ready(function () {
      $("#notification-1").Notification({
        // Notification varibles
        Varible1: [
          "Dirk",
          "Johnny",
          "Watkin ",
          "Alejandro",
          "Vina",
          "Tony",
          "Ahmed",
          "Jackson",
          "Noah",
          "Aiden",
          "Darren",
          "Isabella",
          "Aria",
          "John",
          "Greyson",
          "Peter",
          "Mohammed",
          "William",
          "Lucas",
          "Amelia",
          "Mason",
          "Mathew",
          "Richard",
          "Chris",
          "Mia",
          "Oliver",
        ],
        Varible2: [
          "USA",
          "UAE",
          "ITALY",
          "FLORIDA",
          "MEXICO",
          "INDIA",
          "CHINA",
          "CAMBODIA",
          "UNITED KINGDOM",
          "GERMANY",
          "AUSTRALIA",
          "BANGLADESH",
          "SWEDEN",
          "PAKISTAN",
          "MALDIVES",
          "SEYCHELLES",
          "BOLIVIA",
          "SOUTH AFRICA",
          "ZAMBIA",
          "ZIMBABWE",
          "LEBANESE",
          "SAUDI ARABIA",
          "CHILE",
          "PEUTO RICO",
        ],

        Amount: [10000, 2500, 555, 666, 444, 333, 333],
        Content: "[Varible1] from [Varible2] has just Earned<b>$[Amount]</b>.",
        // Timer
        Show: ["stable", 5, 10],
        Close: 5,
        Time: [0, 60],
        // Notification style
        LocationTop: [true, "20%"],
        LocationBottom: [false, "10%"],
        LocationRight: [false, "10%"],
        LocationLeft: [true, "10px"],
        Background: "#176E4C",
        BorderRadius: 5,
        BorderWidth: 5,
        BorderColor: "#176E4C",
        TextColor: "white",
        IconColor: "white",
        // Notification Animated
        AnimationEffectOpen: "slideInUp",
        AnimationEffectClose: "slideOutDown",
        // Number of notifications
        Number: 40,
        // Notification link
        Link: [true, "fund/login", "_blank"],
      });
    });
  </script>
  
  
  </body>

 
  <!-- /WhatsHelp.io widget -->
</html>