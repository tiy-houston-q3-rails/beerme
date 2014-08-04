class BeersController < ApplicationController

  protect_from_forgery only: :create

  respond_to :html, :json

  before_action :authenticate_user!, if: -> {request.format == :json}

  def index
    @beers = Beer.all
    respond_with @beers
  end

  def show
    @beer = Beer.find(params[:id])
    respond_with @beer
  end

  def create
    @beer = Beer.new params.require(:beer).permit([:brewery_id, :name, :abv, :style, :photo])
    @beer.save
    respond_with @beer
  end

  def authenticate_user!

    if request.headers["auth-token"] != "SUPSUPSUP"
      render text: "BAD!", status: 401
    end

  end
end
