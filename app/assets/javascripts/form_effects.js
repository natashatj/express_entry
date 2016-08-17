// $(function() {
//   var form_fields = $('.form-effect');

//     form_fields.mouseenter(function(){

//       if (form_fields.is(':hidden')) {
//         form_fields.show().focus()
//       }
//         form_fields.animate ({
//           'width': form_fields.width() == 100 ? '0px' : '100px'
//         }, 'fast', function(){
//           if (form_fields.width() == 0) {
//             form_fields.hide();
//           }
//         });
//     });
//   });
//   $('.form-effect').mouseenter(function() {
//     $(this).css('color', 'red');
//   });
//   $('.form-effect').mouseleave(function() {
//     $(this).css('color', 'white');
//   });
// });

// $(function () {
//    var mglass = $('.magnifying-glass');
//    var form = $('.header-search-box');
//    mglass.click(function () {
//        if (form.is(':hidden')) form.show()
//        form.animate({
//            'width': form.width() == 100 ? '0px' : '100px'
//        }, 'slow', function () {
//            if (form.width() == 0) form.hide()
//        });
//    });
// });