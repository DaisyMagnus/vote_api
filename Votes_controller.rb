class VoteController < ApplicationController
  def create
    voter = Vote.new(:token_key_string)
    if voter.save
      render json: voter
    else
      render json: voter.errors
    end
  end

  def destroy
    
  end
end
