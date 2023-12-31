import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-song"
export default class extends Controller {
  connect() {
    console.log("hello")
  }
}
