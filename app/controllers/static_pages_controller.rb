class StaticPagesController < ApplicationController
  def index
    if user_signed_in?
      redirect_to user_page_path(current_user.username)
    end
  end

  def about
  end
end
