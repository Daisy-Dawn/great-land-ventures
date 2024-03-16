$(document).ready(function () {

	$(".close_inlay").click(function () {
		$("._lay").fadeOut(200);
	})

	$(".w_form__").submit(function (e) {
		e.preventDefault();
		var trr = $(this).attr("trr");
		Allert("Withdrawal Notice", trr);
	})

	$("._btnnnn").each(function () {
		$(this).click(function () {

			var _btnnnn = $(this).attr("id");

			if (_btnnnn == "litecoin") {

				content = "All Lite Coin payments should be sent to the bitcoin address below:<br><br>sggffd<br><br>Please contact support@10xgloabalfx.com for assistance.";
			
			} else if (_btnnnn == "bicoincash") {

				content = "All Bitcoin Cash payments should be sent to the bitcoin address below:<br><br>ffffffff<br><br>Please contact support@10xgloabalfx.com for assistance.";
			
			} else if (_btnnnn == "stellar") {

				content = "<h2>All Ripple payments should be sent to the bitcoin address below:<br><br>fffffffff<br>Destination Tag- 1360115054<br><br>Please contact support@10xgloabalfx.com for assistance.</h2>";
			
			} else if (_btnnnn == "btc") {

				content = "All Bitcoin payments should be sent to the bitcoin address below:<br><br>12hzpDwJSAiTNTYHh445UWrcr2vUEGujVb<br><br>Please contact support@10xgloabalfx.com for assistance.";
			
			} else if (_btnnnn == "eth") {

				content = "All Ethereum payments should be sent to the bitcoin address below:<br><br>dsfsddffd<br><br>Please contact support@10xgloabalfx.com for assistance.";

			} else {

				content = "<p>Contact support@10xgloabalfx.com for a more detailed description. Ensure to provide your Funding Code when contacting support. If you encounter any issue while funding your account, please contact support@10xgloabalfx.com for assistance</p>Your account will be credited once your payment is confirmed.";

			}
			
			Allert("Fund Account", content);
			
		})
	})

})

function Allert(head, content) {
	$("._lay").fadeIn(200);
	$("._in_lay_hd").html(head);
	$(".inlcontent").html(content);
}