class breweriesController < ApplicationController
  def index
    @breweries = render brewery.all
  end

  def show
  end

  def create
    @breweries = Brewery.new(brewery_params)
    if @brewery.save
      render json: @brewery
    else
      render_error(all_messages) 422
    end
  end

  def update
    if @brewery.update(brewery_params)
      render json: @brewery
    else
      render_error(all_messages) 422
  end

  def destroy
    @brewery.destroy
    render json: { message: 'removed' }, status: :ok
  end

  private
    def set_brewery
      @brewery = Brewery.find(params[:id])
    end
end
