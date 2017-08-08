class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer :votable_id, null: false
      t.string  :votable_type, null: false
      t.integer :voter_id, null: false
      t.integer :vote_direction

      t.timestamps null: false
    end
  end
end
