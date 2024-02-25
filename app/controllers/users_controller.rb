class UsersController < ApplicationController
  def show  
    @user = User.find(params[:id])# ユーザー情報を出す処理を記述
  end
end