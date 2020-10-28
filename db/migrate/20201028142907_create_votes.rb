class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.belongs_to :user, null: false
      t.belongs_to :review, null: false

      t.integer :user_vote_value, null: false

      t.timestamps
    end
  end
end
