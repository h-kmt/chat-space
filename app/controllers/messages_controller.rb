class MessagesController < ApplicationController
  def index
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to new_user_path
  end

  private

   def user_params
     params.require(:user).permit(:text)
     params.require(:user).permit(:image)
   end
end
