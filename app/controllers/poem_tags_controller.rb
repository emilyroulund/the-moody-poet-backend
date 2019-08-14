class PoemTagsController < ApplicationController

  def index
    poem_tags = Poem.all
    render json: poem_tags, include: [:tag, :poem]
  end

  def show
    poem_tag = Poem.find_by(id: params[:id])
    render json: poem_tag, include: [:tag, :poem]
  end

  def create
    poem_tag = Poem.find_or_create_by(poem_id: params[:poem_id], tag_id: params[:tag_id])
     render json: poem_tag
  end

  def update
    poem_tag = Poem.find_by(id: params[:id])
    render json: poem_tag
  end

  def destroy
    poem_tag = Poem.find_by(id: params[:id])
    poem_tag.destroy
    render json: {}, status: :no_content
  end

end
