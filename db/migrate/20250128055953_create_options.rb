class CreateOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :options do |t|
      t.references :question, null: false, foreign_key: true
      t.string :content, limit: 10, null: false
      t.boolean :answers, default: false

      t.timestamps
    end
  end
end