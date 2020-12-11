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

      //$(".show-btn").click(function(){
        //$("#show-modal").fadeIn();
      //});

      $(".close-modal").click(function(){
        $("#new-modal").fadeOut();
        $("#signup-modal").fadeOut();
        $("#login-modal").fadeOut();
        $("#exit-modal").fadeOut();
        $("#seach-modal").fadeOut();
      });
    


        $(".select-icon").click(function(){
          $(this).fadeTo(300, 0.7);
          let iconId = $(this).attr('id');
          $("#icon-send").val(iconId);
        });

  });

  //切り出す
  if (location.pathname.match("/")){
    document.addEventListener("DOMContentLoaded", () => {
      const inputElement = document.getElementById("flowers_tag_name");
      inputElement.addEventListener("keyup", () => {
        const keyword = document.getElementById("flowers_tag_name").value;
        const XHR = new XMLHttpRequest();
        XHR.open("GET", `/flowers/ajax/?keyword=${keyword}`, true);
        XHR.responseType = "json";
        XHR.send();
        XHR.onload = () => {
          const searchResult = document.getElementById("ajax-result");
          searchResult.innerHTML = "";
          if (XHR.response) {
            const tagName = XHR.response.keyword;
            tagName.forEach((tag) => {
              const childElement = document.createElement("div");
              childElement.setAttribute("class", "child");
              childElement.setAttribute("id", tag.id);
              childElement.innerHTML = tag.name;
              searchResult.appendChild(childElement);
              const clickElement = document.getElementById(tag.id);
              clickElement.addEventListener("click", () => {
                document.getElementById("flowers_tag_name").value = clickElement.textContent;
                clickElement.remove();
              });
            });
          };
        };
      });
    });
  };
  //切り出す