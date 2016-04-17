class ContentsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @contents  = Content.all.order("created_at DESC").page(params[:page]).per(6)
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

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end


end
