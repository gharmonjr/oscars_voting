class CreateMovieCategoryUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :movie_category_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :movie_category, null: false, foreign_key: true
      t.boolean :vote, default: false
      t.timestamps
    end
    add_index :movie_category_users, [:user_id, :movie_category_id], unique: true
  end
end
