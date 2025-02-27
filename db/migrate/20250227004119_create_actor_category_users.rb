class CreateActorCategoryUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :actor_category_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :actor_category, null: false, foreign_key: true
      t.boolean :vote, default: false
      t.timestamps
    end
    add_index :actor_category_users, [:user_id, :actor_category_id], unique: true
  end
end
