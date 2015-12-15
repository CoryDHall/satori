class AddIndexOnDataToLists < ActiveRecord::Migration
  def change
    add_index :lists, :data, using: :gin 
  end
end
