class SetDefaultBasentaForNewConverts < ActiveRecord::Migration[7.2]
  def up
    default_basenta = Basenta.first

    # Update all records that currently have a null basenta_id to the default_basenta
    NewConvert.where(basenta_id: nil).update_all(basenta_id: default_basenta.id) if default_basenta.present?
  end

  def down
    # Optionally, if you want to reverse this migration, you can set basenta_id back to nil
    # NewConvert.update_all(basenta_id: nil)
  end
end
