class CartsController < ApplicationController
  before_action :authenticate_user!, only: [:checkout]

  def checkout
    @order = current_user.orders.build
    @info = @order.build_info
  end

  def clean
    current_cart.clean!
    flash[:warning] = "已清空購物車"
    redirect_to carts_path
  end

  def update
    @cart = current_cart
    @item = @cart.cart_items.find_by(product_id: params[:id])

    @item.update(item_params)

    redirect_to carts_path
  end

  private

  def item_params
    params.require(:cart_item).permit(:quantity)
  end
end
