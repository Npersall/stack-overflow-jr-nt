class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.integer  :commenter_id, null: false
      t.integer  :question_id, null: false
      t.text     :body, null: false
      t.boolean  :best_answer, default: false

      t.timestamps null: false
    end
  end
end
