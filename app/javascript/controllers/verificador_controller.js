import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  connect() {
    console.log("this is not working");
  }


  static targets = [ "input" ];

  formatNumber(event) {
  // skip for arrow keys
    if(event.which >= 37 && event.which <= 40){
        event.preventDefault();
    }

    let num = this.inputTarget.value.replace(/,/gi, "");
    let num2 = num.split(/(?=(?:\d{3})+$)/).join(",");
    console.log(num2);
  }

}
