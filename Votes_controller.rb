class VoteController < ApplicationController
  def create
    vote = Vote.new(:token_key_string)
    if voter.save
      render json: voter
    else
      render json: voter.errors
    end
  end

  
end
