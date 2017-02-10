class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart
  
  def index
    @products = Product.order(:title)
    set_index_view_count
  end
  
  private
  
  def set_index_view_count
    if session[:visits].nil?
      session[:visits] = 0
    end
    session[:visits] += 1
  end
end
