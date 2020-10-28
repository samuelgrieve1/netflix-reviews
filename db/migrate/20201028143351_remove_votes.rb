class RemoveVotes < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :votes, :integer
  end
end