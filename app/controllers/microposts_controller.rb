class MicropostsController < ApplicationController
  before_action :authorize, only: [:create, :destroy]

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to :back
    end
  end

  def destroy
  end

  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
  end

  private
    def micropost_params
      params.require(:micropost).permit(:content)
    end
end
