class VoterController < ApplicationController
  def index
    render json: Voter.all.to_json
  end

  def create

  end
end
