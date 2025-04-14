import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="host"
export default class extends Controller {
  connect() {
    console.log("Connected")
    this.element.textContent = "hi from host"
  }
}

console.log("Loaded")
