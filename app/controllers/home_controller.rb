class HomeController < ApplicationController
  def index

    if current_user != nil
      redirect_to :controller => 'listings', :action => 'index'
    else
      render "index"
    end

  end
end
