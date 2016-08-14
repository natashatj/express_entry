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
//= require tether
//= require jquery_ujs
//= require turbolinks
// //= require_tree .

// CANDIDATE FORM

$(function(){
  function updateLanguageTestMenu(selectedLanguage) {
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
    updateLanguageTestMenu(selectedLanguage);

  });
})

$(function(){
  function updateScoreMenu(selectedTest) {
    var $ele = $(".options_score");
    $ele.each(function(){
      if ($(this).data('test') == +selectedTest) {
        $(this).show();
      } else {
        $(this).hide();
      }
    })
  }
  $("#tests").change(function() {
    var selectedTest = $("#tests option:selected").val();
    updateScoreMenu(selectedTest);
    console.log(selectedTest);
  });
})
$(function(){
  function updateReadingScoreMenu(selectedTest) {
    var $ele = $(".options_score_reading");
    $ele.each(function(){
      if ($(this).data('test') == +selectedTest) {
       $(this).show();
     } 
     else {
       $(this).hide();
     }
   })
  }
  $("#tests").change(function() {


    var selectedTest = $("#tests option:selected").val();
    updateReadingScoreMenu(selectedTest);
    console.log(selectedTest);

  });
})
$(function(){
  function updateWritingScoreMenu(selectedTest) {
    var $ele = $(".options_score_writing");
    $ele.each(function(){
      if ($(this).data('test') == +selectedTest) {
       $(this).show();
     } 
     else {
       $(this).hide();
     }
   })
  }
  $("#tests").change(function() {


    var selectedTest = $("#tests option:selected").val();
    updateWritingScoreMenu(selectedTest);
    console.log(selectedTest);

  });
})
$(function(){
  function updateSpeakingScoreMenu(selectedTest) {
    var $ele = $(".options_score_speaking");
    $ele.each(function(){
      if ($(this).data('test') == +selectedTest) {
       $(this).show();
     } 
     else {
       $(this).hide();
     }
   })
  }
  $("#tests").change(function() {


    var selectedTest = $("#tests option:selected").val();
    updateSpeakingScoreMenu(selectedTest);
    console.log(selectedTest);

  });
})
$(function(){
  function updateListeningScoreMenu(selectedTest) {
    var $ele = $(".options_score_listening");
    $ele.each(function(){
      if ($(this).data('test') == +selectedTest) {
       $(this).show();
     } 
     else {
       $(this).hide();
     }
   })
  }
  $("#tests").change(function() {


    var selectedTest = $("#tests option:selected").val();
    updateListeningScoreMenu(selectedTest);
    console.log(selectedTest);

  });
});

// video on main page
var w = $(window).width(), h = $(window).height()  
$('#video-block video').css({height: ''+h+'',width: ''+w+''});
$(window).resize(function(){
  var w = $(window).width(), h = $(window).height()  
  $('#video-block video').css({height: ''+h+'',width: ''+w+''});
});

//render the second form if application has two candidates
// var spousePresent = 
$(function(){
  function CloneForm(){
    $( ".left-side-form" ).clone().appendTo( ".personal-forms" );
  }
});
// // // = require_tree .










