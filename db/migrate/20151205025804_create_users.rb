class CreateUsers < ActiveRecord::Migration
  def change
    enable_extension 'citext'

    create_table :users do |t|
      t.citext :name, null: false
      t.jsonb :prefs, null: false, default: '{}'

      t.timestamps null: false
    end
    add_index :users, :name, unique: true
    add_index :users, :prefs, using: :gin 
  end
end
