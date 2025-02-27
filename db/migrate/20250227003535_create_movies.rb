class CreateMovies < ActiveRecord::Migration[8.0]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.integer :release_year
      t.string :director
      t.timestamps
    end
    add_index :movies, [:title, :release_year], unique: true, name: "idx_unique_movie_year"
  end
end
