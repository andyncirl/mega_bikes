class StoreController < ApplicationController
  def index
    @products = Product.order(:make)
    @cart = current_cart
  end
end
