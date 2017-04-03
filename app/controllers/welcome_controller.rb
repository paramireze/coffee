class WelcomeController < ApplicationController
  def home
    @purchases = Purchase.most_recent
    @users = User.all
    @stores = Store.all
    @items = Item.most_recent
  end

  def about
  end
end
