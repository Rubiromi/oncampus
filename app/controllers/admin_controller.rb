class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_user_is_admin

  def index
    @title = 'Admin Courses'
  end

  private

  def ensure_user_is_admin
    unless current_user && current_user.admin?
      redirect_to(root_path, alert: "You are not admin!")
    end
  end
end
