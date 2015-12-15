class ReconfigureUsersTable < ActiveRecord::Migration
  def change
    remove_index :users, :reset_password_token
    remove_index :users, :prefs
    remove_index :users, :name

    remove_columns :users, :name, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip

    rename_column :users, :prefs, :data

    add_index :users, :data, using: :gin
  end
end
