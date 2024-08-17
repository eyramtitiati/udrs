# app/models/basenta.rb
class Basenta < ApplicationRecord
    self.table_name = 'basentas'

    has_many :new_converts
end
  