$(document).ready(function(){

$("#addClass").click(function(){
  $("#1").find("p").addClass("red");
  });

$( "#slideToggle" ).click(function() {
  $( "#2" ).slideToggle( "slow" );
  });
$( "#append" ).click(function() {
  $( "#3" ).find("p").append( " <b>new paragraph. new paragraph new paragraph</b>.");
  });
$( "#hide" ).click(function() {
  $( "#4" ).find("p").hide();
  });
$( "#show" ).click(function() {
  $( "#4" ).find("p").show();
  });
$( "#slideDown" ).click(function() {
  $( "#5" ).find("#panel").slideDown("slow");
  });
$("#slideUp").click(function(){
  $( "#5" ).find("#panel").slideUp("slow");
  });
$("#fadeIn").click(function(){
  $("#6").find("p").fadeIn(1000);
    });
$("#fadeOut").click(function(){
  $("#6").find("p").fadeOut(1000);
  });
$("#before").click(function(){
  $("#7").find("p").before("<b>Before</b>");
  });
$("#after").click(function(){
  $("#7").find("p").after("<b>After</b>");
  });
$("#html").click(function(){
  alert(".HTML: " + $("#8").find("p").html());
  });
$("#text").click(function(){
  alert(".TXT: " +  $("#8").find("p").text());
  });
});
