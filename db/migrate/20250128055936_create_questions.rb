class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :title, limit: 30, null: false
      t.text :question_text, null: false
      t.text :explanation
      t.integer :subject
      t.string :name, null: false

      t.timestamps
    end
  end
end