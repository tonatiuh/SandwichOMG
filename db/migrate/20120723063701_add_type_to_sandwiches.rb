class AddTypeToSandwiches < ActiveRecord::Migration
  def change
    add_column :sandwiches, :type, :string
    add_column :sandwiches, :user_id, :integer
    add_index :sandwiches, :user_id
  end
end
