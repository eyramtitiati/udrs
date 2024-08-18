class AddFieldsToNewConverts < ActiveRecord::Migration[7.2]
  def change
    add_column :new_converts, :knows_someone, :string
    add_column :new_converts, :someone_name, :string
    add_column :new_converts, :join_us, :string
  end
end
