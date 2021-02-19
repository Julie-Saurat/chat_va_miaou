import { Controller } from "stimulus";
import Rails from "@rails/ujs";

export default class extends Controller {
  static targets = ["description", "modal"]

  connect() {
    console.log
  }

  show(event) {
    const idBooking = event.currentTarget.dataset.id;

    Rails.ajax({
      type: "get",
      url: `/bookings/${idBooking}`,
      success: this.display.bind(this),
      error: (data) => { console.log(data) }
    })
  }

  display(data) {
    this.descriptionTarget.innerHTML = data.html;
  }

  hideModal() {
    this.modalTarget.classList.add("d-none");
  }
}