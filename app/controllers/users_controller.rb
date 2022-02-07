class UsersController < ApplicationController
  def show
  end

  def edit
    @user = user(params[:id])
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body, :image)  
  end
end
