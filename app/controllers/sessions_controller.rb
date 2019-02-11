class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    # TODO:あとでmessages/indexにredirectするように変更
    return redirect_to user_path(user) if user && user.authenticate(params[:session][:password])
    render 'new'
  end

  def destroy
  end

end