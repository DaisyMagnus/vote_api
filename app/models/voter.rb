class Voter < ActiveRecord::Base
  validates :name, presence: true
  validates :party, presence: true
  validates :zipcode, length: { is: 5 }
  validates :token_key_string, presence: true, length: { minimum: 10 }

  def change
    voter = Voter.new(name: params[:name], party: params[:party],
            zipcode: params[:zipcode])
    @voter = Voter.find(params[:id])
    @voter.update_attributes(voter_params)
  end


end
