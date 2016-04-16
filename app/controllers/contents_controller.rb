class ContentsController < ApplicationController

  def index
    @contents  = Content.all
  end

  def new
  end


end
