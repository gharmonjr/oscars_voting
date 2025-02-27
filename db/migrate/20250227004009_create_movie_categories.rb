class CreateMovieCategories < ActiveRecord::Migration[8.0]
  def change
    create_table :movie_categories do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.integer :year, null: false
      t.timestamps
    end
    add_index :movie_categories, [:movie_id, :category_id], unique: true, name: "udx_movie_category"
  end
end
