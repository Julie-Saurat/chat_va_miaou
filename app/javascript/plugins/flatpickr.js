import flatpickr from "flatpickr"

const flatPickr = () => {
   const bookingForm = document.getElementById('start-date');

  if (bookingForm) {
    flatpickr(bookingForm, {
      enableTime: true,
      dateFormat: "d/m/Y H\\h00",
      minDate: "today",
      time_24hr: true,
      defaultDate: tomorrow(),
      defaultHour: 8,
      hourIncrement: 6,
      minuteIncrement: 0,
      minTime: "8:00",
      maxTime: "14:00",
    });
  }

};

const tomorrow = () => {
  let today = new Date();
  const tomorrow = today.setHours(32,0,0,0);
  return tomorrow;
}

export { flatPickr };
