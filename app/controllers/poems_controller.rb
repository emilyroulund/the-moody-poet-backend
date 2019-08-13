class PoemsController < ApplicationController

  def index
    poems = Poem.all
    render json: poems
  end

  def show
    poem = Poem.find_by(id: params[:id])
    render json: poem
  end


  def create
    poem = Poem.create(author: params[:author], classification: params[:classification],
      keywords: params[:keywords], period: params[:period], reference: params[:reference],
      region: params[:region], text: params[:text], title: params[:title], year: params[:year])
    render json: poem
  end

  def update
    poem = Poem.find_by(id: params[:id])
     render json: poem
  end

  def destroy
    poem = Poem.find_by(id: params[:id])
    poem.destroy
     render json: {}, status: :no_content
  end

end
