class AddColoumToAppFunctionality < ActiveRecord::Migration[6.1]
  def up
    add_column :app_functionalities, :app_message, :string
    add_column :app_functionalities, :app_image, :string
  end
  def down
    remove_column :app_functionalities, :app_message, :string
    remove_column :app_functionalities, :app_image, :string
  end
end
