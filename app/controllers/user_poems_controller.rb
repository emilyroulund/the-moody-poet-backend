class UserPoemsController < ApplicationController

  def index
    user_poems = UserPoem.all
    render json:user_poems
  end

  def show
    user_poem = UserPoem.find_by(id: params[:id])
    render json: user_poem
  end

  def create
    user_poem = UserPoem.find_or_create_by(author: params[:author],
      classification: params[:classification],
      text: params[:text],
      title: params[:title])
    render json: user_poem
  end

  def update
    user_poem = UserPoem.find_by(id: params[:id])
     render json: user_poem
  end

  def destroy
    user_poem = UserPoem.find_by(id: params[:id])
    user_poem.destroy
    render json: {}, status: :no_content
  end

end
