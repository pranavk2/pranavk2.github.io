$(document).ready(function() {
   $('div').mouseenter(function() {
       $(this).animate({
           height: '+=10px'
       });
   });
   $('div').mouseleave(function() {
       $(this).animate({
           height: '-=10px'
       }); 
   $('div').click(function() {
       $(this).toggle(1000);
   }); 
});
   });
/*

$( document ).ready(function() {
 
    $( "div" ).click(function( event ) {
 
        alert( "Thanks for visiting!" );
 
    });
 
});*/