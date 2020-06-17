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
end
