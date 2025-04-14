import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="engine"
export default class extends Controller {
  connect() {
    console.log("Connected")
    this.element.textContent = "hi from engine"
  }
}

console.log("Loaded")