jQuery(function($){
    // Frequently Asked Question
    var board = $('.faq>.faqBody>.board');
    board.addClass('hide');
    board.find('.a').hide();
    board.eq(0).removeClass('hide');
    board.eq(0).find('.a').show();
    $('.faq>.faqBody>.board>.q>a').click(function(){
        var myboard = $(this).parents('.board:first');
        if(myboard.hasClass('hide')){
        	board.addClass('hide').removeClass('show');
        	board.find('.a').slideUp(100);
        	myboard.removeClass('hide').addClass('show');
        	myboard.find('.a').slideDown(100);
        } else {
        	myboard.removeClass('show').addClass('hide');
        	myboard.find('.a').slideUp(100);
        }
        return false;
    });
});




