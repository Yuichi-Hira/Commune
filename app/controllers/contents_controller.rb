class ContentsController < ApplicationController

  def index
    @contents  = Content.all
  end

  def new
  end

  def create
    Content.create(content_params)
  end


end
