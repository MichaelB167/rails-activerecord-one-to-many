# documentation
class AddPersonToPets < ActiveRecord::Migration
  def change
    add_reference :pets, :owner, references: :people, index: true
    add_foreign_key :pets, :people, column: :owner_id
  end
end
