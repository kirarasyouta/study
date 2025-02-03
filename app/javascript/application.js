// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener("DOMContentLoaded", function() {
    const cancelBtn = document.getElementById("cancel-btn");                     // 中止ボタン
    const cancelModal = document.getElementById("cancel-modal");                 // モーダル全体
    const cancelConfirmButton = document.getElementById("cancel-confirm-button"); // 「中止する」ボタン
    const cancelCloseButton = document.getElementById("cancel-close-button");     // 「キャンセル」ボタン

    // 中止ボタンをクリック → モーダルを表示
    cancelBtn.addEventListener("click", function(e) {
        e.preventDefault(); // aタグのデフォルト遷移を止める
        cancelModal.style.display = "block";
    });

    // 「中止する」をクリック → トップページへ移動
    cancelConfirmButton.addEventListener("click", function() {
        // 以下、トップページへのパスを指定（例： top_index_path がある場合）
        window.location.href = "../top/index";
    });

    // 「キャンセル」をクリック → モーダルを閉じる
    cancelCloseButton.addEventListener("click", function() {
        cancelModal.style.display = "none";
    });
});
