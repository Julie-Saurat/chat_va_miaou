 const changeBookingMessage = () => {
  const element = document.querySelector("#booking_start_date");
  element.addEventListener('change', (event) => {
    const check = document.querySelector(".form-check-label.boolean.optional");
    check.innerText = [check.innerText.slice(0, -1), `à ${element.value}`, " ?"].join('');
  });
};

export {changeBookingMessage};
 
 
