$(function(){
    $('.card').mouseover(function(){
        $(this).addClass('card_fadecolor');
    });
    $('.card').mouseout(function(){
        $(this).removeClass('card_fadecolor');
    });
});