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
      setTimeout(function(){ window.location = btnhome.href; }, 700)

    })
  }
}
