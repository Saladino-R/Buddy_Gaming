export const selectGame = () => {
  //On a selecionner la classe game-card et on l'a stocké dans la variables cards
  const cards = document.querySelectorAll('.game-card')
  //On a récupéré un array
  if (cards) {
    cards.forEach(card => {
       // On a ajouté l'événement "click" sur chaque card
      card.addEventListener("click", () => {
         //On a selectionner le input vide (id => inspecteur)
        const gameInput = document.querySelector('#user_game_game_id')
         //On a remplacé la valeur de l'input par le game id
        gameInput.value = parseInt(card.dataset.id, 10)
       })
    });
  }
}
