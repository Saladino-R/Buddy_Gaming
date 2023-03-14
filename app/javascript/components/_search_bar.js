import { selectGame } from "./_select_game";


export const searchBar = () => {
  //On a selecionner la classe game-card et on l'a stocké dans la variables cards
  const searchInput = document.querySelector('#input_search')
  //On a récupéré un array
  if (searchInput) {
    const displayData = (data) => {
      const listGame = document.querySelector('.list-games')
      listGame.innerHTML = ''
      data.forEach(el => {
        const card = `<li class='card1 m-1 game-card' data-id=${el.id}>
        <div class="card2">
        <img src=${el.background_image}>
        <p>${el.name}</p>
        </div>
      </li>`
        listGame.insertAdjacentHTML('beforeend', card)
      });
      selectGame()
    }

    searchInput.addEventListener("keyup", (event) =>{
      if (searchInput.value.length > 2) {
        fetch(`https://api.rawg.io/api/games?key=247e70c9e71849f08c28fb60b1976fb3&search=${searchInput.value.replace(' ','-')}&page_size=5&ordering=-metacritic`)
          .then(response => response.json())
          .then(data => displayData(data.results));
      }
    })
}
}
