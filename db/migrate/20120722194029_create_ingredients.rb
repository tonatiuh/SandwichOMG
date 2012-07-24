class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :sandwich_id

      t.timestamps
    end
    add_index :ingredients, :sandwich_id
  end
end
