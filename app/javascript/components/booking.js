 const changeBookingMessage = () => {
  const element = document.querySelector("#start-date");
  const check = document.querySelector(".form-check-input");
  if (check || element) {
    console.log(check);
   [check, element].forEach((item) => {
    item.addEventListener('change', (event) => {
      const message = document.getElementById("hour");
      if (check.checked) {
        message.innerText = `Vous pourrez arriver dès ${element.value.split(' ')[1]}.`;
      } else {
        message.innerText = '';
      }
    });
   })
  }
};

const priceElmt = document.getElementById('price')
const daysElmt = document.getElementById("number-of-half-days");

const totalPrice = () => {
  const price = priceElmt.dataset.pricePerHalfDay;
  const days = daysElmt.value;
  return price * days;
};

const updatePrice = () => {
  const priceDiv = document.getElementById("booking-total");
  if (priceDiv) {
    priceDiv.innerText = `${totalPrice()}€`;
    daysElmt.addEventListener("change", (event) => {
      priceDiv.innerText = `${totalPrice()}€`;
    });
  }
};

export { updatePrice };
export { changeBookingMessage };
