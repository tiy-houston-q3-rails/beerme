class BreweriesController < ApplicationController

  protect_from_forgery only: :create

  respond_to :html, :json

  # before_action :authenticate_user!, if: -> {request.format == :json}

  def index
    @breweries = Brewery.all
    respond_with @breweries
  end

  def show
    @brewery = Brewery.find(params[:id])
    respond_with @brewery
  end


  def authenticate_user!

    if request.headers["auth-token"] != "SUPSUPSUP"
      render text: "BAD!", status: 401
    end

  end
end
