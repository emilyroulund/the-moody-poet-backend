class FavoritesController < ApplicationController

  def index
    favorites = Favorite.all
    render json: favorites, include: [:users, :poems]
  end

  def show
    favorite = Favorite.find_by(id: params[:id])
    render json: favorite, include: [:users, :poems]
  end

  def create
    favorite = Favorite.find_or_create_by(user_id: params[:user], poem_id: params[:poem)
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
