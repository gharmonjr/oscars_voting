class CreateActors < ActiveRecord::Migration[8.0]
  def change
    create_table :actors do |t|
      t.string :name, null: false
      t.text :bio
      t.timestamps
    end
    add_index :actors, :name, unique: true
  end
end
