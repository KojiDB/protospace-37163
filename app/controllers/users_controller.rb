class UsersController < ApplicationController
  def show
    @users = User.includes(:prototype)
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
  end
end
