class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.belongs_to :user, null: false
      t.belongs_to :netflix_show, null: false

      t.string :comment, null: false
      t.integer :rating, null: false
      t.integer :votes_total, null: false, default: 0
      
      t.timestamps
    end
  end
end
