class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :name, null: false
      t.references :user, index: true, foreign_key: true
      t.references :list, index: true, foreign_key: true

      t.jsonb :data, null: false, default: '{}'

      t.timestamps null: false
    end
    add_index :items, :name
    add_index :items, :data, using: :gin
  end
end
