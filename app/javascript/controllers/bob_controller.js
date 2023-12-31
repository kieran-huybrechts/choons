import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bob"
export default class extends Controller {
  connect() {
    console.log("hello there!")
  }
}
