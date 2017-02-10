class WelcomeController < ApplicationController

  def home
    render html: '<div> hi</div>'.html_safe
  end
end
