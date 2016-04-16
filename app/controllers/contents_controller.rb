class ContentsController < ApplicationController

  def index
    @contents  = Content.all
  end

  def new
  end

  def create
    Content.create(name: params[:contributor], image: params[:image_url], body: params[:body])
  end


end
