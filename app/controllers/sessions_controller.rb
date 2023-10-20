class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:id] == 'kindai' && params[:password] == 'sanriko'
      flash[:success] = 'ログイン成功'
      redirect_to root_path
    else
      flash[:error] = 'ログイン失敗'
      render :new
    end
  end
end