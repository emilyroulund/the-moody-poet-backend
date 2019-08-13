class FavoritesController < ApplicationController

  def index
    favorites = Favorite.all
    render json: favorites, include: [:user, :poem]
  end

  def show
    favorite = Favorite.find_by(id: params[:id])
    render json: favorite, include: [:user, :poem]
  end

  def create
    favorite = Favorite.create(user_id: params[:user_id], poem_id: params[:poem_id])
    render json: favorite
  end

  def update
    favorite = Favorite.find_by(id: params[:id])
    render json: favorite
  end

  def destroy
    favorite = Favorite.find(params[:id])
    favorite.destroy
    render json: { message: 'success' }
  end

end
