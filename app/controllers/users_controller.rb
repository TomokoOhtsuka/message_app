class UsersController < ApplicationController
  def new
  end
  
  def show
  end
  
  def index
    #とりあえず登録してるユーザーの一覧。
    #showとmessage/newへのリンクをつけたい
    #ここにransack入れたい
  end
  
  def edit
  end
  
  def update
  end
  
  private
    def set_user
      @user = User.find(params[:id])
    end
    
    def user_params
      params.require(:user).permit(:name, :email)
    end
  
end
