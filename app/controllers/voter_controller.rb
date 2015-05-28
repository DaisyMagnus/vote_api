class VoterController < ApplicationController
  def index
    render json: Voter.all.to_json
  end

  def create
    voter = Voter.new(name: params[:name], party: params[:party],
            zipcode: params[:zipcode])
    if voter.save
      render json: voter
    else
      render json: voter.errors
    end
  end

  def show
      render json: Voter.find_by(params[:token_key_string]).to_json
  end

  def update
    if voter = Voter.find_by(params[:token_key_string]).to_json
      voter.change
    end
  end


end
