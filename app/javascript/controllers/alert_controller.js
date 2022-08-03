import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="alert"
export default class extends Controller {
  static targets = ["btn"]
  static values = {
    text: String
  }
  connect() {
    console.log('connected')
    console.log(this.btnTarget)
    console.log(this.textValue)
  }
  close() {
    this.element.remove()
  }
}
