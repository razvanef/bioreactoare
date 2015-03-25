$(document).ready(function(){
	$('#cssmenu').localScroll(800);
	$('#intro').parallax("50%", 0.1);
	$('#second').parallax("50%", 0.1);
	$('#third').parallax("50%", 0.3);

	var _rys = jQuery.noConflict();
		_rys("document").ready(function(){
		
			_rys(window).scroll(function () {
				if (_rys(this).scrollTop() > 50) {
					_rys('.nav-container').addClass("f-nav");
					_rys("#logo").show();
					_rys("#cssmenu").css("top","50px");
				} else {
					_rys('.nav-container').removeClass("f-nav");
					_rys("#logo").hide();
					_rys("#cssmenu").css("top","94px");
				}
			});

		});

});