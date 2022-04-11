class CreateAppFunctionalities < ActiveRecord::Migration[6.1]
  def change
    create_table :app_functionalities do |t|
      t.string :app_version
      t.string :app_package
      t.boolean :is_locked

      t.timestamps
    end
  end
end


