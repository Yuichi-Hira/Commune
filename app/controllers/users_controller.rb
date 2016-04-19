class UsersController < ApplicationController
  def show
    @name = current_user.name
    @contents = current_user.contents.page(params[:page]).per(6).order('created_at DESC')
  end
end

