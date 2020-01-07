$(function(){

  var STEP = 30;
  var TYPING_LINE = '<span class="line">_</span>';

  function setTextAnimate(target){
    var str = target.text();
    var num = 0;
    var typingLine;

    target.text('').append(TYPING_LINE);
    typingLine = target.find('.line');

    for(var i=0; i<str.length; i++){
      setTimeout(function(){
        typingLine.remove();
        target.append( str.charAt(num)).append(typingLine);
        num++;
      }, i*STEP);
    };
   setTimeout(function(){
    typingLine.remove();
  }, str.length*STEP);
  };
  $.each($('.wrapper_chest__bottom, h2'), function(){
   setTextAnimate($(this));
});
});




