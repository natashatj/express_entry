// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
// //= require_tree .
$(function(){
  function updateLangageTestMenu(selectedLanguage) {
    var $ele = $(".options_eval");
    $ele.each(function(){
      if ($(this).data('lang') == selectedLanguage) {
       $(this).show();
      } 
     else {
       $(this).hide();
     }
   })
  }
   $("#language").change(function() {

    
    var selectedLanguage = $("#language option:selected").text();
    updateLangageTestMenu(selectedLanguage);

   });
 })
 




//= require_tree .
// $(function(){
//   $(".language_dropdown").change(function(){
//     // <!-- first select and inject html in and use val -->
//     if() {

//     }
//     else if() {
      
//     }
//   })
// })
>>>>>>> adece6a5b448b761e9e7add43a1d5551bf5a8477
