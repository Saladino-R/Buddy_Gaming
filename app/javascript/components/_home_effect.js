export const homeEffect= () => {
  const btnhome = document.querySelector("#home_effect")

  if (btnhome){
    btnhome.addEventListener("click",(event) => {
      event.preventDefault()

      const left = document.querySelector(".left-logo")
      const right = document.querySelector(".right-logo")

      left.classList.add("move-left")
      right.classList.add("move-right")
      btnhome.style.opacity=0
      // const audio = new Audio("https://res.cloudinary.com/dcd4fkkhk/video/upload/v1679047162/wet-fart-6139_tedd7d.mp3");
      const audio = new Audio("https://res.cloudinary.com/dcd4fkkhk/video/upload/v1679046874/blaster-2-81267_d0vvpn.mp3");
      console.log(audio);
      audio.play();


      setTimeout(function(){ window.location = btnhome.href; }, 700)

    })
  }
}
