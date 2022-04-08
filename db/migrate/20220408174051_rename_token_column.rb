class RenameTokenColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :token, :refresh_token
  end
end
