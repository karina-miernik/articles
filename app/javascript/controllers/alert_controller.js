import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="alert"
export default class extends Controller {

  connect() {
  }
  static targets = ["container"]
  
  close() {
    this.containerTarget.remove()
  }
}
