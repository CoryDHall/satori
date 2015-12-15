class ReconfigureItems < ActiveRecord::Migration
  def change
    remove_index :items, :name
    remove_column :items, :name
  end
end
