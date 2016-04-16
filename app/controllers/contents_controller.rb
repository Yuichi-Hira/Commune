class ContentsController < ApplicationController

  def index
    @contents  = Content.all
  end

  def new
  end

  def create
    Content.create(content_params)
  end

  private
  def content_params
    params.permit(:contributor, :image, :body)
  end


end
