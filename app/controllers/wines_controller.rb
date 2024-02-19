class WinesController < ApplicationController

  def index
    @wines = Wine.all
  end

  def user_index
    @wines = Wine.where(user: current_user)
  end

  def new
    @wine = Wine.new
  end

  def create
    @wine = Wine.new
    @wine.name = params[:wine][:name]
    @wine.year = params[:wine][:year]
    @wine.color = params[:wine][:color]
    @wine.come_from = params[:wine][:come_from]
    @wine.vignoble = params[:wine][:vignoble]
    @wine.price = params[:wine][:price]
    @wine.user = current_user
    @wine.save!

    redirect_to wines_path
  end

  def show
    @wine = Wine.find_by_id(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def params_task
    params.require(:wine).permit(:name, :year, :description, :price, :type, :come_from, :vignoble)
  end

end
