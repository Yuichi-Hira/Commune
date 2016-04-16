class ContentsController < ApplicationController

  def index
    @contents  = Content.all
  end

  def new
  end

  def create
    Content.create(contributor: "", image: "", body: "")
  end


end
