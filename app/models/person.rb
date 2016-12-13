# documentation
class Person < ActiveRecord::Base
  # has many is a method, accepting two arguments (pets and everything else)
  has_many :pets, inverse_of: :owner, foreign_key: 'owner_id'
  belongs_to :city, inverse_of: :people, class_name: 'City'

  def full_name
    "#{surname}, #{given_name}"
  end
end
