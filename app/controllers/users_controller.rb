class UsersController < ApplicationController
  def new
  end

  def create
    # @user = User.new(user_params)
    @user = User.new(name: params[:name], email: params[:email], password: params[:password])

    if @user.save
      redirect_to new_user_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
