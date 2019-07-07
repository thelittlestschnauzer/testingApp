class HomeController < ApplicationController
  
  def index
    @grants = Grant.all 
  end

  def terms
  end

  def privacy
  end
end
