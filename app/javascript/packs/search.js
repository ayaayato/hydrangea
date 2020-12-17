if (!(document.URL.match( /search/ ) || document.URL.match( /edit/ ) || document.URL.match( /show/ )|| document.URL.match( /users/ ) || document.URL.match( /loves/ ) || document.URL.match( /skins/ ) || document.URL.match( /orders/ ))) {
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