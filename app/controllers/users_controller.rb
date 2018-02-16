class UsersController < ApplicationController
   before_action :authenticate_user!

  def user
    @user = User.all
    @newpost = Booker.new
  end

  def show
    @user = User.find(params[:id])
    @post = @user.bookers.page(params[:page]).reverse_order
    @newpost = Booker.new
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

	private
	def user_params
   		params.require(:user).permit(:name, :profile_image, :profile_text)
	end

end
