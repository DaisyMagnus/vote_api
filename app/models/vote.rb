class Vote < ActiveRecord::Base
  belongs_to :voter
  belongs_to :candidate
  validates :voter_id, presence: true
  validates :candidate_id, presence: true
end
