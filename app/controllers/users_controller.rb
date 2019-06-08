class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params) #private: user_params
    
    if @user.save
      log_in @user #sessions_helper
      redirect_to @user
      flash[:success] = "ユーザーの新規作成に成功しました。"  
    else
      render 'new'
    end
  end
    
  private
    
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
      
end
