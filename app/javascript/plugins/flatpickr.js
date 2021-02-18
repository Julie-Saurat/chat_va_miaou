import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

const flatPickr = () => {
   const bookingForm = document.getElementById('start-date');

  if (bookingForm) {
    flatpickr(bookingForm, {
      enableTime: true,
      dateFormat: "Y-m-d H\\h00",
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
  console.log(tomorrow);
  console.log(today);
  return tomorrow;
}

export { flatPickr };
