class PurchasesController < ApplicationController

  def show
    @purchase = Purchase.find(params[:id])
  end

  def create
    @cat = Cat.find(params[:cat_id])
    @purchase = Purchase.new(purchase_params)
    @purchase.cat = @cat
    @purchase.user = current_user

    if @purchase.save
      redirect_to cats_path
    else
      render 'cats/show'
    end
  end

  private

  def purchase_params
    params.require(:purchase).permit(:message)
  end
end
