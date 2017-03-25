class WelcomeController < ApplicationController
  def home
    @purchases = Purchase.most_recent
    @users = User.all
    @stores = Store.all
  end

  def about
  end
end
