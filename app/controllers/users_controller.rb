class UsersController < ApplicationController
  before_action :set_user, only:[:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  def create
   - binding.pry
   @user = User.new(user_params)
   return redirect_to user_path(@user) if @user.save
   render action: 'new'
   # あとでmessages/indexにredirectするように変更
  end
  
  def show; end
  
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
      params.require(:user).permit(:name, :email, :password, :password_comfirmation)
    end
  
end
