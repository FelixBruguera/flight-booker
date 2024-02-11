import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ['output', 'parent']
    connect() {
    }
    add() {
        console.log(this.parentTarget)
        this.buttons = this.element.querySelector('#buttons')
        this.template = this.element.querySelector('#new-booking').cloneNode(true)
        this.count = this.element.querySelector('#booking_tickets')
        if (this.count.value > 3) {return ""}
        this.parentTarget.firstElementChild.removeChild(this.buttons)
        this.template.content.firstElementChild.firstElementChild.name = `booking[passengers_attributes][${this.count.value}][name]`
        this.template.content.firstElementChild.children[1].name = `booking[passengers_attributes][${this.count.value}][email]`
        this.parentTarget.firstElementChild.appendChild(this.template.content)
        this.parentTarget.firstElementChild.appendChild(this.buttons)
        this.count.value = parseInt(this.count.value)+ 1
    }
    remove() {
        this.count = this.element.parentElement.querySelector('#booking_tickets')
        if (this.element.firstElementChild.name.split('').includes('0')) { return ''}
        this.outputTarget.parentElement.removeChild(this.outputTarget)
        this.count.value = parseInt(this.count.value) - 1
    }
}