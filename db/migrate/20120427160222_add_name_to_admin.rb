class AddNameToAdmin < ActiveRecord::Migration
  def self.up
    add_column :admin_users, :name, :string, :null => false
  end

  def self.down
    remove_column :admin_users, :name
  end
end
