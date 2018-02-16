class BookersController < ApplicationController
 before_action :authenticate_user!, only: [:index, :show, :edit, :update, :destroy]

  def top
  end

  def about
  end

  def index
   	@post = Booker.page(params[:page]).reverse_order
    @newpost = Booker.new
  end

  def show
  	@post = Booker.find(params[:id])
  end

  def create
  	newpost = Booker.new(post_params)
    newpost.user_id = current_user.id
  	newpost.save
    redirect_to user_path(current_user.id)
  end

  def edit
  	@post = Booker.find(params[:id])
  end

  def update
  	post = Booker.find(params[:id])
  	post.update(post_params)
  	redirect_to booker_path
  end

  def destroy
  	post = Booker.find(params[:id])
  	post.destroy
  	redirect_to bookers_path
  end

  private
  def post_params
  	params.require(:booker).permit(:title, :impression, :user_id)
  end

  def user_params
      params.require(:user).permit(:name, :profile_image, :profile_text)
  end

end
