class CreateNewConverts < ActiveRecord::Migration[7.2]
  def change
    create_table :new_converts do |t|
      t.string :name
      t.string :gender
      t.date :date_of_birth
      t.string :contact_number_1
      t.string :contact_number_2
      t.string :house_number
      t.string :landmark
      t.string :area
      t.string :city
      t.string :other_contact_name
      t.string :other_contact_number
      t.string :other_contact_relationship
      t.string :inviter_name
      t.string :inviter_contact

      t.timestamps
    end
  end
end
