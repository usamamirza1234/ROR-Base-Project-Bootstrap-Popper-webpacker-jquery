class AddColoumnsToAppUsers < ActiveRecord::Migration[6.1]
  def up
    add_column :app_users, :first_name, :string
    add_column :app_users, :last_name, :string
    add_column :app_users, :contact_number, :string
    add_column :app_users, :username, :string
  end

  def down
    remove_column :app_users, :first_name, :string
    remove_column :app_users, :last_name, :string
    remove_column :app_users, :contact_number, :string
    remove_column :app_users, :username, :string
  end
end
