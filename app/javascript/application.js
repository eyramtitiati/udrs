// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import { Turbo } from "@hotwired/turbo-rails"
import "controllers"
import 'bootstrap'

// Initialize tooltips
document.addEventListener('turbo:load', () => {
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
    var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
      return new bootstrap.Tooltip(tooltipTriggerEl)
    })
  })

  document.addEventListener("DOMContentLoaded", function() {
    const knowsSomeoneSelect = document.getElementById("knowsSomeoneSelect");
    const someoneNameField = document.getElementById("someoneNameField");
  
    if (knowsSomeoneSelect) {
      knowsSomeoneSelect.addEventListener("change", function() {
        if (knowsSomeoneSelect.value === "yes") {
          someoneNameField.style.display = "block";
        } else {
          someoneNameField.style.display = "none";
        }
      });
  
      // Initial check in case of back button navigation
      if (knowsSomeoneSelect.value === "yes") {
        someoneNameField.style.display = "block";
      } else {
        someoneNameField.style.display = "none";
      }
    }
  });
  