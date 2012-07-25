class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :nick_name
      t.string :profile_picture
      t.string :description

      t.timestamps
    end
  end
end
