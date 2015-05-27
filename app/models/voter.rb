class Voter < ActiveRecord::Base
  validates :name, presence: true
  validates :party, presence: true
  validates :zipcode, length: { is: 5 }
end
