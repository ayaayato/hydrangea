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
    //$(".icons").hover(
      //function(){
        //$(this).fadeTo(300, 0.7);
      //},
      //function(){
        //$(this).fadeTo(300, 1);
      //}
      //);


    $(".new-btn").hover(
      function(){
        $("#new-balloon").fadeIn();
      },
      function(){
        $("#new-balloon").fadeOut();
      });
    
    $(".seach-btn").hover(
      function(){
        $("#seach-balloon").fadeIn();
      },
      function(){
        $("#seach-balloon").fadeOut();
      });  

    $(".user-btn").hover(
      function(){
        $("#user-balloon").fadeIn();
      },
      function(){
        $("#user-balloon").fadeOut();
      });

    $(".coin-btn").hover(
      function(){
        $("#coin-balloon").fadeIn();
      },
      function(){
        $("#coin-balloon").fadeOut();
      });

    $(".fav-flowerbtn").hover(
      function(){
        $("#fav-flower-balloon").fadeIn();
      },
      function(){
        $("#fav-flower-balloon").fadeOut();
      });
      
    $(".fav-userbtn").hover(
      function(){
        $("#fav-user-balloon").fadeIn();
      },
      function(){
        $("#fav-user-balloon").fadeOut();
      });

    $(".blue-icon").hover(
      function(){
        $(this).fadeTo(300, 0.7);
        $("#index-balloon").fadeIn();
      },
      function(){
        $(this).fadeTo(300, 1);
        $("#index-balloon").fadeOut();
      }
      );

      $(".new-btn").click(function(){
        $("#new-modal").fadeIn();
      });

      $(".close-modal").click(function(){
        $("#new-modal").fadeOut();
        $("#signup-modal").fadeOut();
        $("#login-modal").fadeOut();
      });
    
  });