// CANDIDATE FORM

// $(function(){
//   function updateLanguageTestMenu(selectedLanguage) {
//     var $ele = $("eng_celpip_div");
//     $ele.each(function(){
//       if ($(this).data('lang') == selectedLanguage) {
//        $(this).show();
//      } 
//      else {
//        $(this).hide();
//      }
//    })
//   }
//   $("#language").change(function() {
//     var selectedLanguage = $("#test-options-eng option:selected").text();
//     updateLanguageTestMenu(selectedLanguage);
//     console.log(selectedLanguage)

//   });
// })

$(function(){
  $("#test-options-eng").on('change', function(event){
    $('#eng_celpip_div').hide();
    $('#eng_ielts_div').hide();
    var newVal = $(event.target).find(':selected').text();
    if (newVal === "CELPIP") {
      $('#eng_celpip_div').show();
    } else if (newVal === "IELTS"){
      $('#eng_ielts_div').show();
    }
  })

  $("#test-options-fr").on('change', function(event){
    $('#fr_tefl_div').hide();
    var newVal = $(event.target).find(':selected').text();
    if (newVal === "TEFL") {
      $('#fr_tefl_div').show();
    }
  })


});
// $(function(){
//   function updateScoreMenu(selectedTest) {
//     var $ele = $(".options_score");
//     $ele.each(function(){
//       if ($(this).data('test') == +selectedTest) {
//         $(this).show();
//       } else {
//         $(this).hide();
//       }
//     })
//   }
//   $("#tests").change(function() {
//     var selectedTest = $("#tests option:selected").val();
//     updateScoreMenu(selectedTest);
//     console.log(selectedTest);
//   });
// })
// $(function(){
//   function updateReadingScoreMenu(selectedTest) {
//     var $ele = $(".options_score_reading");
//     $ele.each(function(){
//       if ($(this).data('test') == +selectedTest) {
//        $(this).show();
//      } 
//      else {
//        $(this).hide();
//      }
//    })
//   }
//   $("#tests").change(function() {


//     var selectedTest = $("#tests option:selected").val();
//     updateReadingScoreMenu(selectedTest);
//     console.log(selectedTest);

//   });
// })
// $(function(){
//   function updateWritingScoreMenu(selectedTest) {
//     var $ele = $(".options_score_writing");
//     $ele.each(function(){
//       if ($(this).data('test') == +selectedTest) {
//        $(this).show();
//      } 
//      else {
//        $(this).hide();
//      }
//    })
//   }
//   $("#tests").change(function() {


//     var selectedTest = $("#tests option:selected").val();
//     updateWritingScoreMenu(selectedTest);
//     console.log(selectedTest);

//   });
// })
// $(function(){
//   function updateSpeakingScoreMenu(selectedTest) {
//     var $ele = $(".options_score_speaking");
//     $ele.each(function(){
//       if ($(this).data('test') == +selectedTest) {
//        $(this).show();
//      } 
//      else {
//        $(this).hide();
//      }
//    })
//   }
//   $("#tests").change(function() {


//     var selectedTest = $("#tests option:selected").val();
//     updateSpeakingScoreMenu(selectedTest);
//     console.log(selectedTest);

//   });
// })
// $(function(){
//   function updateListeningScoreMenu(selectedTest) {
//     var $ele = $(".options_score_listening");
//     $ele.each(function(){
//       if ($(this).data('test') == +selectedTest) {
//        $(this).show();
//      } 
//      else {
//        $(this).hide();
//      }
//    })
//   }
//   $("#tests").change(function() {


//     var selectedTest = $("#tests option:selected").val();
//     updateListeningScoreMenu(selectedTest);
//     console.log(selectedTest);

//   });
// });









