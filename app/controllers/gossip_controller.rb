class GossipController < ApplicationController
  before_action :authenticate_user, only: [:new]
  
  def show
   @gossip = Gossip.find(params[:id])
  end 

  def new
  end

  def create 
    post_params = params.reqire(:gossip).permit(:title, :content)
    @gossip = Gossip.create(post_params)
    
    if @gossip.save
    redirect_to gossip_path(gossip.id)
    
    else
    render :new
    end
  
  end 

  def edit 
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    post_params = params.require(:gossip).permit(:title, :content)
    @gossip.update(post_params)
    if @gossip.update(post_params)
      redirect_to '/gossip/:id'
    else 
      render :edit 
    end
  end 

  def destroy 
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to 'index'
  end 

  private 

  def post_params
    post_params = params.require(:gossip).permit(:title, :content)
  end 

  def authenticate_user
    unless current_user
      flash[:danger] = "Please log in."
      redirect_to new_session_path
    end
  end
end 




