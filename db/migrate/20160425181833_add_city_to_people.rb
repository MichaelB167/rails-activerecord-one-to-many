# documentation
class AddCityToPeople < ActiveRecord::Migration
  def change
    add_reference :people, :born_in, references: :cities, index: true
    add_foreign_key :people, :cities, column: :born_in_id
  end
end
