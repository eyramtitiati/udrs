class AddBasentaToNewConverts < ActiveRecord::Migration[7.0]
  def change
    # Add the foreign key reference with `null: true` to avoid the error
    add_reference :new_converts, :basenta, null: true, foreign_key: { to_table: :basentas }
  end
end
