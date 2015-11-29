class MicropostsController < ApplicationController
  before_action :authorize, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy
  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      redirect_to :back
      flash[:success] = "Micropost created!"
    else
      redirect_to :back
      flash[:failure] = "Micropost failed!"
    end
  end

  def destroy
    @micropost.destroy
    flash[:success] = "Micropost deleted"
    redirect_to request.referrer || root_url
  end

  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
  end

  private
    def micropost_params
      params.require(:micropost).permit(:content, :picture)
    end

    def correct_user
      @micropost = current_user.microposts.find_by(id: params[:id])
      redirect_to root_url if @micropost.nil?
    end
end
