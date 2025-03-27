import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["input"];

    toggleSelection(concertId) {
        const concertDiv = this.element;
        const concertIdValue = concertDiv.dataset.concertId;
        const input = this.inputTargets.find(input => input.value == concertIdValue);

        if (concertDiv.classList.contains("selected")) {
            concertDiv.classList.remove("selected");
            input.disabled = true;
        } else {
            concertDiv.classList.add("selected");
            input.disabled = false;
        }
    }
}
