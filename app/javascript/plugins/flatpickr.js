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
      defaultHour: 8,
      hourIncrement: 6,
      minuteIncrement: 0,
      minTime: "8:00",
      maxTime: "14:00",
    });
  }

};

export { flatPickr };
