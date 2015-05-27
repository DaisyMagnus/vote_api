class Candidate < ActiveRecord::Base
  has_many :voters
  validates :name, presence:true
  validates :party, presence:true
  validates :district, presence:true
  validates :hometown, presence:true
end
