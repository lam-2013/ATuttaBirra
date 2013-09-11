class PagesController < ApplicationController
  def home
    @post = current_user.posts.build if signed_in?
    @feed_items = current_user.feed.paginate(page: params[:page]) if current_user
  end

  def about
  end

  def contact
  end

  def cerca
  end


end
