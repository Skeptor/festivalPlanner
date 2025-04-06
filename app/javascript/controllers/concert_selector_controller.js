import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["input"];

    toggleSelection() {
        this.element.classList.toggle("selected");
        let input = document.getElementById('input_' + this.element.id);
        input.disabled = !input.disabled;
    }
}
