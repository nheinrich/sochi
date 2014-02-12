class AthletesController < ApplicationController
  before_filter :find_athlete, only: :show
  respond_to :json

  def index
    @athletes = Athlete.all
  end

  def show
    respond_with @athlete
  end
  
  private
  def find_athlete
    @athlete = Athlete.find(params[:id])
  end

end