var w = $(window).width(), h = $(window).height()  
$('#video-block video').css({height: ''+h+'',width: ''+w+''});
$(window).resize(function(){
  var w = $(window).width(), h = $(window).height()  
  $('#video-block video').css({height: ''+h+'',width: ''+w+''});
});