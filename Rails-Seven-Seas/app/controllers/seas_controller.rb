class SeasController < ApplicationController
  #define your controller actions here
  def index
    @seas = Sea.all
    render 'index'
  end

  def show
    @sea = Sea.find(params[:id])
  end

  def edit
    @sea = Sea.find(params[:id])
  end

  def update
    @sea = Sea.find(params[:id])
    @sea.update(sea_params)
    render 'show'
  end

  def destroy
    @sea = Sea.find(params[:id])
    @sea.destroy
    @seas = Sea.all
    render 'index'
  end

  def welcome
  end

  def new
    @sea = Sea.new
    render 'new'
  end

  def create
    Sea.create(sea_params)
    @seas = Sea.all
    render 'index'
  end

  private
  # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # check the return value of sea_params to see what you're working with!
  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end

end
