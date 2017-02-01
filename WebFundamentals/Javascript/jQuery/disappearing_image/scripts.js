$(document).ready(function(){
  $("img").click(function(){
    $(this).fadeOut(3000);
    });
  $("button").click(function(){
    $('img').fadeIn('fast');
    });
  $("img").click(function() {
    (this).show();
    });
});
