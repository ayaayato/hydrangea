$(function(){

  $(".icons").hover(
    function(){
      $(this).animate({
        width: '+=10', 
        height: '+=10'
      },300)
    },
    function(){
      $(this).animate({
        width: '-=10', 
        height: '-=10'
      },300)
    });

    $(".blue-icon").hover(
      function(){
        $(this).fadeTo(300, 0.7);
      },
      function(){
        $(this).fadeTo(300, 1);
      }
      );
    
  });