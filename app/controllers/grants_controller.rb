class GrantsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_grant, except: [:index, :new, :create]
  
  def index 
    @grants = Grant.all 
  end 

  def show 
  end 

  def new 
    @grant = current_user.grants.new
  end 

  def create 
    @grant = current_user.grants.new(grant_params) 
      if @grant.save 
        redirect_to root_path
      else
        render :new  
      end 
  end 

  private 

  def set_grant 
    @grant = Grant.find(params[:id])
  end 

  def grant_params 
    params.require(:grant).permit(:name, :sector, :description, :region, :visibility, :user_id)
  end 
end
