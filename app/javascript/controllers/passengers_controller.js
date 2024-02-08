import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ['output', 'rem']
    connect() {
    }
    add() {
        this.buttons = this.element.querySelector('#buttons')
        this.template = this.element.querySelector('#new-booking').cloneNode(true)
        this.count = this.element.querySelector('#booking_tickets')
        if (this.count.value > 3) {return ""}
        this.outputTarget.parentElement.removeChild(this.buttons)
        this.template.content.firstElementChild.firstElementChild.name = `booking[passengers_attributes][${this.count.value}][name]`
        this.template.content.firstElementChild.children[1].name = `booking[passengers_attributes][${this.count.value}][email]`
        this.outputTarget.parentElement.appendChild(this.template.content)
        this.outputTarget.parentElement.appendChild(this.buttons)
        this.count.value = parseInt(this.count.value)+ 1
    }
    remove() {
        this.count = this.element.querySelector('#booking_tickets')
        if (this.count.value <= 1) { return ''}
        this.outputTarget.parentElement.removeChild(this.outputTarget)
        this.count.value = parseInt(this.count.value) - 1
    }
}