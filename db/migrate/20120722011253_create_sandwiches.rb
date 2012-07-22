class CreateSandwiches < ActiveRecord::Migration
  def change
    create_table :sandwiches do |t|
      t.string :name

      t.timestamps
    end
  end
end
