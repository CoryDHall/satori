class ReconfigureLists < ActiveRecord::Migration
  def change
    remove_index :lists, :title
    remove_index :lists, :config

    rename_column :lists, :config, :data

    remove_columns :lists, :title, :description
  end
end
