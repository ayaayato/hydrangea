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
        $(".user-icon, .user-text").fadeTo(300, 0.6);
        $("#user-balloon").fadeIn();
      },
      function(){
        $(".user-icon, .user-text").fadeTo(300, 1);
        $("#user-balloon").fadeOut(200);
      });

      $(".level-btn").hover(
        function(){
          $(this).fadeTo(300, 0.6);
          $("#level-balloon").fadeIn();
        },
        function(){
          $(this).fadeTo(300, 1);
          $("#level-balloon").fadeOut(200);
        });


    $(".coin-btn").hover(
      function(){
        $("#coin-balloon").fadeIn();
      },
      function(){
        $("#coin-balloon").fadeOut(200);
      });

    $(".exit-btn").hover(
      function(){
        $(".exit-balloon").fadeIn();
      },
      function(){
        $(".exit-balloon").fadeOut(200);
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
        $(".index-balloon").fadeIn();
      },
      function(){
        $(this).fadeTo(300, 1);
        $(".index-balloon").fadeOut(200);
      }
      );

      $(".new-btn").click(function(){
        $("#new-modal").fadeIn();
      });

      $(".exit-btn").click(function(){
        $("#exit-modal").fadeIn();
      });

      $(".seach-btn").click(function(){
        $("#seach-modal").fadeIn();
      });

      $(".destroy-btn").click(function(){
        $("#destroy-modal").fadeIn();
      });

      //$(".show-btn").click(function(){
        //$("#show-modal").fadeIn();
      //});

      $(".close-modal").click(function(){
        $("#new-modal").fadeOut();
        $("#signup-modal").fadeOut();
        $("#login-modal").fadeOut();
        $("#exit-modal").fadeOut();
        $("#seach-modal").fadeOut();
        $("#destroy-modal").fadeOut();
      });
    


        $(".select-icon").click(function(){
          $(".select-icon").removeClass("selected-icon");
          $(this).addClass("selected-icon");
          let iconId = $(this).attr('id');
          $("#icon-send").val(iconId);
        });

        $(".flash").fadeOut(3500);

        $(".item-imgs").hover(
          function(){
            $(this).fadeTo(300, 0.7);
          },
          function(){
            $(this).fadeTo(300, 1);
          }
          );


        $(window).scroll(function() {
          $('.top-texts').css({
            'opacity': '0',
            'transform': 'translateX(30px)'
          });
          let scroll = $(window).scrollTop();
          let windowHeight = $(window).height();
          $('.top-texts').each(function() {
            let elemPos = $(this).offset().top;
            if (scroll > elemPos - windowHeight + 100) {
              $(this).css({
                'opacity': '1',
                'transform': 'translateX(0)'
              });
            }
          });
        });

  });

  //切り出す

  //切り出す