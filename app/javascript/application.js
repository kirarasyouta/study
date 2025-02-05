import "@hotwired/turbo-rails"
import "controllers"

window.selectOption = function(element, name) {
    document.querySelectorAll(`input[name="${name}"]`).forEach(input => {
        input.parentElement.classList.remove('selected');
    });
    element.classList.add('selected');
    element.querySelector('input').checked = true;
}

window.showAnswer = function(questionNumber) {
    const selectedOption = document.querySelector(`input[name="answer${questionNumber}"]:checked`);
    if (!selectedOption) {
        alert("回答が選択されていません！");
        return;
    }
    document.getElementById(`answer-explanation${questionNumber}`).style.display = "block";  
    document.getElementById(`question${questionNumber}`).style.display = "none";  
}

window.nextQuestion = function() {
    document.getElementById("answer-explanation1").style.display = "none";  
    document.getElementById("question2").style.display = "block";  
}


document.addEventListener("DOMContentLoaded", function () {
    document.querySelectorAll(".option").forEach(option => {
        option.addEventListener("click", function () {
            selectOption(this, this.querySelector("input").name);
        });
    });
});

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
