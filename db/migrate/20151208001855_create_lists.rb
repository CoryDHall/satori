class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.text :title
      t.text :description
      t.references :user, index: true, foreign_key: true

      t.jsonb :config, null: false, default: '{}'

      t.timestamps null: false
    end
    add_index :lists, :title
    add_index :lists, :config, using: :gin
  end
end
