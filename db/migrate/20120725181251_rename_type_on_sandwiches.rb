class RenameTypeOnSandwiches < ActiveRecord::Migration
  def up
    rename_column :sandwiches, :type, :sandwich_type
  end

  def down
  end
end
