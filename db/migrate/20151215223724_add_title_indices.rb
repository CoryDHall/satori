class AddTitleIndices < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE INDEX index_users_on_username ON users ((data->>'username'));
      CREATE INDEX index_users_on_session_token ON users ((data->>'session_token'));

      CREATE INDEX index_lists_on_title ON lists ((data->>'title'));

      CREATE INDEX index_items_on_title ON items ((data->>'title'));
    SQL
  end

  def down
    execute <<-SQL
    DROP INDEX index_users_on_username;
    DROP INDEX index_users_on_session_token;

    DROP INDEX index_lists_on_title;

    DROP INDEX index_items_on_title;
    SQL
  end
end
