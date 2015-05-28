class CandidateController < ApplicationController
  def index
    render json: Candidate.all.to_json
  end

  def show
  
    render json: Candidate.find_by_id(params[:id]).to_json
  end

end
