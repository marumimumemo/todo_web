$(document).on('turbolinks:load', function() {

  $(function() {

    $('.switch').click(function(){
        $('.finish').show();
    });

    $('.switch').click(function(){
        $('.unfinish').hide();
    });

  });

});
