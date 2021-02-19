import { Controller } from "stimulus";
import Rails from "@rails/ujs";

export default class extends Controller {
  static targets = ["button", "description"]

  connect() {
    console.log(this.buttonTarget);
  }

  show(event) {
    const idBooking = event.currentTarget.dataset.id;

    Rails.ajax({
      type: "get",
      url: `/reservations/${idBooking}`,
      success: this.display.bind(this),
      error: (data) => { console.log(data) }
    })
  }

  display(data) {
    this.descriptionTarget.innerHTML = data.html;
    console.log(data);
  }
}