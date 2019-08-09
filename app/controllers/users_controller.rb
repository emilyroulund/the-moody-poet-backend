class UsersController < ApplicationController

  def show
    user = User.find_by(id: params[:id])
    render json: user
  end

  def create
    user = User.find_or_create_by(name: params[:name], username: params[:username], password: params[:password])
    render json: { id: user.id, username: user.username name: user.name}
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

end
