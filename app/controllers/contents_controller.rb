class ContentsController < ApplicationController

  def index
    @contents  = Content.all.order("create_at DESC")
  end

  def new
  end

  def create
    Content.create(content_params)
  end

  private
  def content_params
    params.permit(:title, :contributor, :image_url, :body)
  end


end
