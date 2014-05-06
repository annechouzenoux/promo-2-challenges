/*
  *
  * TODO: add your code here!
  *
*/

$("#message").hide().slideDown(1000);

//ou:
// $(document).ready(function(){
//$("message").hide().delay(500).slideDown();
//});




$("#message").on("click", function() {
  $(this).slideUp("slow");
});

$("#messsage-wrapper").on("mouseenter", function() {
  $("#message").slideDown();
});

$("#messsage-wrapper").on("mouseleave", function() {
  $("#message").slideUp();
});

//ou:  $("#messsage-wrapper")
//    .on("mouseenter", function() {
  //      $("#message").slideDown();
        //});

//    .on("mouseleave", function() {
  //      $("#message").slideUp();
        //});
//})