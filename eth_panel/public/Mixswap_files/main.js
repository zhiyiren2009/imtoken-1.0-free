/* jshint devel:true */
// Initialize your app

$(function () {
	// modal
	$('.gotoPay').on('click', function () {
		var amount = $('.quantity-input').val();
		if(amount == ''){
			$('input').addClass('error').attr('placeholder', '请输入充值金额');
			$('.quantity-input').focus(function() {
				var curValue = $(this).val();
				if(curValue == this.defaultValue){
					$(this).val('');
					$(this).removeClass('error').removeAttr('placeholder');
				}
			});
			$('.quantity-input').blur(function() {
				var curValue = $('.quantity-input').val();
				if($.trim(curValue) == '') {
					$(this).val(this.defaultValue);
				}
			});
			return false;
		} else {
			$('.pages').append('<div class="modal-overlay"></div>');
			$('.modal-overlay').addClass('modal-overlay-visible');
			$('.modal').removeClass('modal-out').addClass('modal-in');
			setTimeout(function() {
				window.location.href = 'index.html';
			}, 3000);
		}
	});
});
