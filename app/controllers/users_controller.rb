class UsersController < ApplicationController

  def index
    @courses = Course.all
  end

  def show
  end
end
