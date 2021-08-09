class HomeController < ApplicationController
  def index

    if current_user != nil
      render "dashboard"
    else
      render "index"
    end

  end

  def dashboard
  end
end
