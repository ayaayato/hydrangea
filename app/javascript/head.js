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
        $("#new-balloon").fadeOut(200);
      });
    
    $(".seach-btn").hover(
      function(){
        $("#seach-balloon").fadeIn();
      },
      function(){
        $("#seach-balloon").fadeOut(200);
      });  

    $(".user-btn").hover(
      function(){
        $("#user-balloon").fadeIn();
      },
      function(){
        $("#user-balloon").fadeOut(200);
      });

    $(".coin-btn").hover(
      function(){
        $("#coin-balloon").fadeIn();
      },
      function(){
        $("#coin-balloon").fadeOut(200);
      });

    $(".fav-flowerbtn").hover(
      function(){
        $("#fav-flower-balloon").fadeIn();
      },
      function(){
        $("#fav-flower-balloon").fadeOut(200);
      });
      
    $(".fav-userbtn").hover(
      function(){
        $("#fav-user-balloon").fadeIn();
      },
      function(){
        $("#fav-user-balloon").fadeOut(200);
      });

    $(".blue-icon").hover(
      function(){
        $(this).fadeTo(300, 0.7);
        $("#index-balloon").fadeIn();
      },
      function(){
        $(this).fadeTo(300, 1);
        $("#index-balloon").fadeOut(200);
      }
      );

      $(".new-btn").click(function(){
        $("#new-modal").fadeIn();
      });

      //$(".show-btn").click(function(){
        //$("#show-modal").fadeIn();
      //});

      $(".close-modal").click(function(){
        $("#new-modal").fadeOut();
        $("#signup-modal").fadeOut();
        $("#login-modal").fadeOut();
      });
    
  });