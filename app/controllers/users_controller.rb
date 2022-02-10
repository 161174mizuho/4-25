class UsersController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
    @user = current_user
    @users = User.all

  end

  def show
    @book = Book.new
    @user = User.find(params[:id])
    @books = @user.books
  end
  
  def edit
    @user = User.find(params[:id])
    if @user_id == current_user
      render "edit"
    else
      redirect_to(books_path)
    end
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)  
  end
  

end
