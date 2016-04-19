class ContentsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @contents  = Content.all.order("created_at DESC").page(params[:page]).per(6)
  end

  def new
    @content = Content.new
  end

  def create
    Content.create(title: content_params[:title], image:content_params[:image], body: content_params[:body], user_id: current_user.id)
  end

  private
  def content_params
    params.permit(:title, :image, :body)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

 def show
  @content = Content.find(params[:id])
end


end
