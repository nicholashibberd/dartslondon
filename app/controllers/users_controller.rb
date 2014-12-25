class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def approve
    approved_user_ids = params[:approved]
    User.all.each do |user|
      approved = approved_user_ids.include? user.id.to_s
      user.update_attributes(approved: approved)
    end
    redirect_to users_path
  end
end
