const mainPhoto = document.querySelector('.main-photo');
console.log(mainPhoto);
const secondPhoto = document.querySelector('.second-photo');

const switchPhotos = () => {
  if (mainPhoto && secondPhoto) {
    [mainPhoto, secondPhoto].forEach((item) => {
      item.addEventListener('click', (event) => {
        mainPhoto.classList.toggle("second-photo");
        mainPhoto.classList.toggle("main-photo");
        secondPhoto.classList.toggle("main-photo");
        secondPhoto.classList.toggle("second-photo");
      });
    })
  }
};

export { switchPhotos };
