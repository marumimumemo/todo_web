$(document).on('turbolinks:load', function() {

  $(function() {

    $('.switch_on').click(function(){
        $('.finished_tasklist').show();
    });

    $('.switch_on').click(function(){
        $('.unfinished_tasklist').hide();
    });

    $('.switch_off').click(function(){
        $('.unfinished_tasklist').show();
    });

    $('.switch_off').click(function(){
        $('.finished_tasklist').hide();
    });

  });

});
