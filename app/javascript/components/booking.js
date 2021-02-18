const priceElmt = document.getElementById('price')
const daysElmt = document.getElementById("number-of-half-days");

const totalPrice = () => {
  const price = priceElmt.dataset.pricePerHalfDay;
  const days = daysElmt.value;
  console.log(days);
  return price * days;
};

const updatePrice = () => {
  const priceDiv = document.getElementById("booking-total");
  priceDiv.innerText = `${totalPrice()}€`;
  daysElmt.addEventListener("change", (event) => {
    priceDiv.innerText = `${totalPrice()}€`;
  });
};


export { updatePrice };
