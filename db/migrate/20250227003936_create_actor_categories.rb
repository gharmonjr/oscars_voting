class CreateActorCategories < ActiveRecord::Migration[8.0]
  def change
    create_table :actor_categories do |t|
      t.references :actor, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.integer :year, null: false
      t.timestamps
    end
    add_index :actor_categories, [:actor_id, :category_id], unique: true, name: "udx_actor_category"
  end
end
