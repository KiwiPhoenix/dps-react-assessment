class BeersController < ApplicationController
  def index
    render json: @brewery.beers
  end

  def show
    render json: @beer
  end

  def create
    @beer = @brewery.beer.new(beer_params)
    if @brewery.save
      render json: @beer
    else
      render_error(all_messages) 422
  end

  def update
    if @
  end

  def destroy
  end
end
