import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dashboard"
export default class extends Controller {
  static targets = ['bookings', 'jewels', 'rental', 'bookcards', 'jewelcards', 'rentalcards']

  connect() {
  }

  showRental() {
    // Remove any active link
    this.bookingsTarget.classList.remove('active')
    this.jewelsTarget.classList.remove('active')
    // Hide other cards
    this.bookcardsTarget.classList.add('d-none')
    this.jewelcardsTarget.classList.add('d-none')
    // Put the link as active
    this.rentalTarget.classList.add('active')
    // Show the right cards
    this.rentalcardsTarget.classList.toggle('d-none')
  }

  showJewels() {
    // Remove any active link
    this.bookingsTarget.classList.remove('active')
    this.rentalTarget.classList.remove('active')
    // Hide other cards
    this.bookcardsTarget.classList.add('d-none')
    this.rentalcardsTarget.classList.add('d-none')
    // Put the link as active
    this.jewelsTarget.classList.add('active')
    // Show the right cards
    this.jewelcardsTarget.classList.toggle('d-none')
  }

  showBookings() {
    // Remove any active link
    this.rentalTarget.classList.remove('active')
    this.jewelsTarget.classList.remove('active')
    // Hide other cards
    this.rentalcardsTarget.classList.add('d-none')
    this.jewelcardsTarget.classList.add('d-none')
    // Put the link as active
    this.bookingsTarget.classList.add('active')
    // Show the right cards
    this.bookcardsTarget.classList.toggle('d-none')
  }
}
