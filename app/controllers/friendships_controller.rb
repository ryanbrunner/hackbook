class FriendshipsController < ApplicationController

  def create
    current_user.friendships.create friend_id: params[:friend_id]

    redirect_to friends_path
  end
end
