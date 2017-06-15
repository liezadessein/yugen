class UsersController < ApplicationController

def new
  @user = User.new
end

 def update
    @user = User.find(params[:id])
    @user.update(user_params)
 end

  private

  def user_params
    params.require(:user).permit(:email)
  end
end




