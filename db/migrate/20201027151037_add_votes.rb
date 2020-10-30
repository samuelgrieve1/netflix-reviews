class AddVotes < ActiveRecord::Migration[5.2]
  def change
      add_column :reviews, :votes, :integer
  end
end
