import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener("DOMContentLoaded", function() {
    const cancelBtn = document.getElementById("cancel-btn");
    const cancelModal = document.getElementById("cancel-modal");
    const cancelConfirmButton = document.getElementById("cancel-confirm-button");
    const cancelCloseButton = document.getElementById("cancel-close-button");

    cancelBtn.addEventListener("click", function(e) {
        e.preventDefault();              
        cancelModal.style.display = "block";  
    });

    cancelConfirmButton.addEventListener("click", function() {
        window.location.href = "/top/index"; 
    });

    cancelCloseButton.addEventListener("click", function() {
        cancelModal.style.display = "none";
    });
});
