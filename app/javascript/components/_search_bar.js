import { selectGame } from "./_select_game";


export const searchBar = () => {
  //On a selecionner la classe game-card et on l'a stocké dans la variables cards
  const searchInput = document.querySelector('#input_search')
  //On a récupéré un array
  if (searchInput) {
    const displayData = (data) => {
      const listGame = document.querySelector('.swiper-wrapper')
      listGame.innerHTML = ''
      data.forEach(el => {
        const card = `
      <div class="swiper-slide">
      <li class='card1 m-1 game-card' data-id=${el.id} >
        <div class="card2">
        <img src=${el.background_image}>
        <p>${el.name}</p>
        </div>
      </li>
    </div>`
        listGame.insertAdjacentHTML('beforeend', card)
      });
      selectGame()
    }

    searchInput.addEventListener("keyup", (event) =>{
        fetch(`https://api.rawg.io/api/games?search=${searchInput.value.replace(' ','-')}&key=247e70c9e71849f08c28fb60b1976fb3&page_size=10`)
          .then(response => response.json())
          .then(data => displayData(data.results));
    })
}
}
