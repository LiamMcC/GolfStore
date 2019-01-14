class StaticPagesController < ApplicationController
  def home
    @categories = Category.all
  end

 def category
 catName = params[:title]
 @items = Item.where("category like ?", catName)
 end

def myOrders
  @orders = Order.where(user_id: current_user.id)
  end
  
  
  def help
  #   @user = User.find(current_user.id)
 #  @user.update_attribute(:admin, true)
  end

  def about
    @order = Order.find(params[:id])
   @order.update_attribute(:status, "Paid With Paypal")
  end
  
  
  def aboutSend
    @order = Order.find(params[:id])
   @order.update_attribute(:status, "Paid With Paypal")
  end
end
