class ContentsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @contents  = Content.all.order("created_at DESC").page(params[:page]).per(6)
  end

  def new
    @content = Content.new
  end

  def create
    Content.create(content_params)
  end

  def show
  @content = Content.find(params[:id])
end


  private
  def content_params
    params.require(:content).permit(:title, :image, :body, :category_id).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end



end
