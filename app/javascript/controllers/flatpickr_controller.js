import { Controller } from "@hotwired/stimulus";

import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ 'startingDateInput', 'endingDateInput' ]

  connect() {
    flatpickr(this.startingDateInputTarget, {
      mode: 'range', "plugins": [new rangePlugin({ input: this.endingDateInputTarget})]
    })
  }
}
