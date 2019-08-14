class TagsController < ApplicationController

  def index
    tags = Tag.all
    render json: tags
  end

  def show
    tag = Tag.find_by(id: params[:id])
    render json: tag, include: [:poems]
  end

  # def show_poems
  #   puts '***********************************'
  #   poems = Poem.find_by(id: params[:id])
  #   render json: tag
  # end

  def create
    tag = Tag.find_or_create_by(name: params[:name])
    render json: tag
  end

  def update
    tag = Tag.find_by(id: params[:id])
    render json: tag
  end

  def destroy
    tag = Tag.find_by(id: params[:id])
    tag.destroy
    render json: {}, status: :no_content
  end

end
