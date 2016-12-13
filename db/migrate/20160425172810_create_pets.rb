# documentation
class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :kind
      t.date :born_on
      t.string :name

      t.timestamps null: false
    end
  end
end
