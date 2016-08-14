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
