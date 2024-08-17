class AddFirstAndLastNameToNewConverts < ActiveRecord::Migration[7.2]
  def change
    add_column :new_converts, :first_name, :string
    add_column :new_converts, :last_name, :string
  end
end
