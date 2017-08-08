class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.integer :author_id
      t.text  :body, null: false
      t.string :title, null: false

      t.timestamps null: false
    end
  end
end
