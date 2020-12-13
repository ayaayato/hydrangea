if (!(document.URL.match( /search/ ) || document.URL.match( /edit/ ) || document.URL.match( /show/ )|| document.URL.match( /users/ ) || document.URL.match( /loves/ ) || document.URL.match( /skins/ ) || document.URL.match( /orders/ ))) {
document.addEventListener('DOMContentLoaded', function(){
  const ImageList = document.getElementById('image-list');
  document.getElementById('flower-image').addEventListener('change', function(e){

    const imageContent = document.querySelector('.entyty');
      if (imageContent){
        imageContent.classList.add('invisi');
      }
    
    const file = e.target.files[0];
    const blob = window.URL.createObjectURL(file);
    const imageElement = document.createElement('div');

    const blobImage = document.createElement('img');
    blobImage.setAttribute('src', blob);
    imageElement.appendChild(blobImage).classList.add('entyty');
    ImageList.appendChild(imageElement);
  });
});
}