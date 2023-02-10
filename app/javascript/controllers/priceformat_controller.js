import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="price"
export default class extends Controller {
  static targets = [ "price" ]
  connect() {
    console.log("Hello, Stimulus! The controller is connected.");
  }


  formatCurrency(e) {
    let value = e.target.value;
    value = value.replace(/[^\d]/g, "");

    let formattedValue = "$";
    for (let i = 0; i < value.length; i++) {
      if (i % 3 === 0 && i !== 0) {
        formattedValue += ",";
      }
      formattedValue += value[i];
    }

    this.priceTarget.value = formattedValue;
  }
}
