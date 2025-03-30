import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["input"];

    toggleSelection() {
        this.element.classList.toggle("selected");
    }
}
