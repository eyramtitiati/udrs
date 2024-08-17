class CreateBasenta < ActiveRecord::Migration[7.2]
  def change
    create_table :basentas do |t|
      t.string :name
      t.string :location
      t.string :contact_person

      t.timestamps
    end
  end
end
