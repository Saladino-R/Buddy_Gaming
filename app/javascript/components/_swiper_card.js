//Swiper J.S for the carousel

//  import Swiper from 'swiper';

export const swiperCard = () => {
  const swiperContainer = document.querySelector('.swiper')
  if (swiperContainer){
    const swiper = new Swiper(".mySwiper", {
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
      keyboard: {
        enabled: true,
      },
      effect: "cards",
      grabCursor: true,
    });
  }
}
