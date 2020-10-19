class CreateNetflixShows < ActiveRecord::Migration[5.2]
  def change
    create_table :netflix_shows do |t|
      t.string :title, null: false
      t.string :genre, null: false
      t.string :description

      t.timestamps
    end
  end
end
