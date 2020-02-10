$(function () {
 

  var timer1 = null;
  var cnt = 0;
  function event() {

      cnt++;

      if (cnt >= 31 && timer1 != null) {
          $(".care_wrapper__bottom__end").text("Finish")
          // $('.btn').off();
          clearInterval(timer1);
          
      }
       else if (cnt <= 1){
      $(".care_wrapper__middle__main__btn1").addClass("changed");
      $(".changed").css("background-color", "yellow");
       }
       else if (cnt >= 2 && cnt < 3){
              $(".care_wrapper__middle__main__btn1").removeClass("changed").css("background-color", "black");
              $(".care_wrapper__middle__main__btn7").addClass("changed");
              $(".changed").css("background-color", "yellow");
         }
         else if (cnt >= 3 && cnt < 4){
          $(".care_wrapper__middle__main__btn7").removeClass("changed").css("background-color", "black");
          $(".care_wrapper__middle__main__btn22").addClass("changed");
          $(".changed").css("background-color", "yellow");
     }
     else if (cnt >= 4 && cnt < 5){
      $(".care_wrapper__middle__main__btn22").removeClass("changed").css("background-color", "black");
      $(".care_wrapper__middle__main__btn11").addClass("changed");
      $(".changed").css("background-color", "yellow");
 }
 else if (cnt >= 5 && cnt < 6){
  $(".care_wrapper__middle__main__btn11").removeClass("changed").css("background-color", "black");
  $(".care_wrapper__middle__main__btn27").addClass("changed");
  $(".changed").css("background-color", "yellow");
}
else if (cnt >= 6 && cnt < 7){
  $(".care_wrapper__middle__main__btn27").removeClass("changed").css("background-color", "black");
  $(".care_wrapper__middle__main__btn13").addClass("changed");
  $(".changed").css("background-color", "yellow");
}
else if (cnt >= 7 && cnt < 8){
  $(".care_wrapper__middle__main__btn13").removeClass("changed").css("background-color", "black");
  $(".care_wrapper__middle__main__btn24").addClass("changed");
  $(".changed").css("background-color", "yellow");
}
else if (cnt >= 8 && cnt < 9){
  $(".care_wrapper__middle__main__btn24").removeClass("changed").css("background-color", "black");
  $(".care_wrapper__middle__main__btn16").addClass("changed");
  $(".changed").css("background-color", "yellow");
}
else if (cnt >= 9 && cnt < 10){
  $(".care_wrapper__middle__main__btn16").removeClass("changed").css("background-color", "black");
  $(".care_wrapper__middle__main__btn25").addClass("changed");
  $(".changed").css("background-color", "yellow");
}
else if (cnt >= 10 && cnt < 11){
  $(".care_wrapper__middle__main__btn25").removeClass("changed").css("background-color", "black");
  $(".care_wrapper__middle__main__btn6").addClass("changed");
  $(".changed").css("background-color", "yellow");
}
else if (cnt >= 11 && cnt < 12){
  $(".care_wrapper__middle__main__btn6").removeClass("changed").css("background-color", "black");
  $(".care_wrapper__middle__main__btn20").addClass("changed");
  $(".changed").css("background-color", "yellow");
}
else if (cnt >= 12 && cnt < 13){
  $(".care_wrapper__middle__main__btn20").removeClass("changed").css("background-color", "black");
  $(".care_wrapper__middle__main__btn3").addClass("changed");
  $(".changed").css("background-color", "yellow");
}
else if (cnt >= 13 && cnt < 14){
  $(".care_wrapper__middle__main__btn3").removeClass("changed").css("background-color", "black");
  $(".care_wrapper__middle__main__btn29").addClass("changed");
  $(".changed").css("background-color", "yellow");
}
else if (cnt >= 14 && cnt < 15){
  $(".care_wrapper__middle__main__btn29").removeClass("changed").css("background-color", "black");
  $(".care_wrapper__middle__main__btn9").addClass("changed");
  $(".changed").css("background-color", "yellow");
}
else if (cnt >= 15 && cnt < 16){
  $(".care_wrapper__middle__main__btn9").removeClass("changed").css("background-color", "black");
  $(".care_wrapper__middle__main__btn18").addClass("changed");
  $(".changed").css("background-color", "yellow");
}
else if (cnt >= 16 && cnt < 17){
  $(".care_wrapper__middle__main__btn18").removeClass("changed").css("background-color", "black");
  $(".care_wrapper__middle__main__btn28").addClass("changed");
  $(".changed").css("background-color", "yellow");
}
else if (cnt >= 17 && cnt < 18){
  $(".care_wrapper__middle__main__btn28").removeClass("changed").css("background-color", "black");
  $(".care_wrapper__middle__main__btn2").addClass("changed");
  $(".changed").css("background-color", "yellow");
}
else if (cnt >= 18 && cnt < 19){
  $(".care_wrapper__middle__main__btn2").removeClass("changed").css("background-color", "black");
  $(".care_wrapper__middle__main__btn23").addClass("changed");
  $(".changed").css("background-color", "yellow");
}
else if (cnt >= 19 && cnt < 20){
  $(".care_wrapper__middle__main__btn23").removeClass("changed").css("background-color", "black");
  $(".care_wrapper__middle__main__btn14").addClass("changed");
  $(".changed").css("background-color", "yellow");
}
else if (cnt >= 20 && cnt < 21){
  $(".care_wrapper__middle__main__btn14").removeClass("changed").css("background-color", "black");
  $(".care_wrapper__middle__main__btn12").addClass("changed");
  $(".changed").css("background-color", "yellow");
}
else if (cnt >= 21 && cnt < 22){
  $(".care_wrapper__middle__main__btn12").removeClass("changed").css("background-color", "black");
  $(".care_wrapper__middle__main__btn26").addClass("changed");
  $(".changed").css("background-color", "yellow");
}
else if (cnt >= 22 && cnt < 23){
  $(".care_wrapper__middle__main__btn26").removeClass("changed").css("background-color", "black");
  $(".care_wrapper__middle__main__btn5").addClass("changed");
  $(".changed").css("background-color", "yellow");
}
else if (cnt >= 23 && cnt < 24){
  $(".care_wrapper__middle__main__btn5").removeClass("changed").css("background-color", "black");
  $(".care_wrapper__middle__main__btn19").addClass("changed");
  $(".changed").css("background-color", "yellow");
}
else if (cnt >= 24 && cnt < 25){
  $(".care_wrapper__middle__main__btn19").removeClass("changed").css("background-color", "black");
  $(".care_wrapper__middle__main__btn30").addClass("changed");
  $(".changed").css("background-color", "yellow");
}
else if (cnt >= 25 && cnt < 26){
  $(".care_wrapper__middle__main__btn30").removeClass("changed").css("background-color", "black");
  $(".care_wrapper__middle__main__btn4").addClass("changed");
  $(".changed").css("background-color", "yellow");
}
else if (cnt >= 26 && cnt < 27){
  $(".care_wrapper__middle__main__btn4").removeClass("changed").css("background-color", "black");
  $(".care_wrapper__middle__main__btn21").addClass("changed");
  $(".changed").css("background-color", "yellow");
}
else if (cnt >= 27 && cnt < 28){
  $(".care_wrapper__middle__main__btn21").removeClass("changed").css("background-color", "black");
  $(".care_wrapper__middle__main__btn8").addClass("changed");
  $(".changed").css("background-color", "yellow");
}
else if (cnt >= 28 && cnt < 29){
  $(".care_wrapper__middle__main__btn8").removeClass("changed").css("background-color", "black");
  $(".care_wrapper__middle__main__btn17").addClass("changed");
  $(".changed").css("background-color", "yellow");
}
else if (cnt >= 29 && cnt < 30){
  $(".care_wrapper__middle__main__btn17").removeClass("changed").css("background-color", "black");
  $(".care_wrapper__middle__main__btn10").addClass("changed");
  $(".changed").css("background-color", "yellow");
}
else if (cnt >= 30 && cnt < 31){
  $(".care_wrapper__middle__main__btn10").removeClass("changed").css("background-color", "black");
}

    }
 $(".care_wrapper__middle__header__start").click(function(){
  timer1 = setInterval(event, 1000);
  // $('.btn').on();
  var i = 0
  $('.btn').click(function() {
    i = i + 1
    $(".care_wrapper__bottom__figure").text(i)
 });

  $(".reset").click(function(){
    i = i * 0
    $(".care_wrapper__bottom__figure").text(i)
    $(".care_wrapper__bottom__end").text("Press start")
   });
});
});



