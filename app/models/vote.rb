class Vote < ActiveRecord::Base
  belongs_to :voter
  belongs_to :candidate
  validates :voter_id, presence: true
  validates :candidate_id, presence: true
  validates :token_key_string, uniqueness: true
end
