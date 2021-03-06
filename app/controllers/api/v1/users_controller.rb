class Api::V1::UsersController < ApplicationController

  def show
    user = User.find_by(id: params[:id])
    render json: user, include: [:favorites]
  end

  def favorites
    user = User.find_by(id: params[:id])
    userFavorites = user.favorites
    render json: userFavorites
  end

  def create
    user = User.create(user_params)
    render json: { id: user.id, username: user.username, name: user.name}
  end

  def update
      user = User.find_by(id: params[:id])
      user.update(username: params[:username])
      render json: { id: user.id, username: user.username, token: token }
  end

  def destroy
      user = User.find_by(id: params[:id])
      user.destroy
      render json: {}, status: :no_content
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :name)
  end

end
