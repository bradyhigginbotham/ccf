class AddFieldsToAccounts < ActiveRecord::Migration
  def self.up
    add_column :accounts, :name, :string, :null => false
    add_column :accounts, :age, :integer, :null => false
    add_column :accounts, :height, :integer, :null => false
    add_column :accounts, :weight, :decimal, :precision => 10, :scale => 2, :null => false
  end

  def self.down
    remove_column :accounts, :name
    remove_column :accounts, :age
    remove_column :accounts, :height
    remove_column :accounts, :weight
  end
end
