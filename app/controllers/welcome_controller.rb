class WelcomeController < ApplicationController
  def home
    @purchases = Purchase.most_recent
    @users = User.all
  end

  def about
  end
end
