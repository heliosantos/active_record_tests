class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def families
    @users = User.where('parent_id IS NULL')
  end
end
