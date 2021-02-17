const searchCards = () => {
  const searchBar = document.getElementById('search-bar');
  if (searchBar) {
    searchBar.addEventListener('keyup', (event) => {
      let search = searchBar.value.toLowerCase();
      filterCards(search);
      console.log(search);
    });
  };
};


const filterCards = (string) => {
  const cards = document.querySelectorAll('.card-cat');
  cards.forEach(card => {
    console.log(card.dataset.city);
    if (!card.dataset.city.toLowerCase().includes(string)) {
      card.parentElement.style.display = 'none';
    } else {
      card.parentElement.style.display = 'initial';
    }
  });
};

export { searchCards };
