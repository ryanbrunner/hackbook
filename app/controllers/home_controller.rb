class HomeController < ApplicationController
  def index
    @posts = current_user.wall_posts
  end
end
