class CatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @cats = Cat.all
  end

  def show
    @cats = Cat.all
    @cat = Cat.find(params[:id])
    @purchase = Purchase.new
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)

    if @cat.save
      redirect_to cat_path(@cat)
    else
      render new_cat_path
    end
  end

  private

  def cat_params
    params.require(:cat).permit(:name, :description, :photo)
  end
end

