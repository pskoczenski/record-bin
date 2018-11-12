class UsersController < ApplicationController
  before_action :authenticate_user!
  # skip_before_action :authenticate_user!, only: [:show]
  respond_to :js, :html, :json

  def show
    @user = current_user
  end

  def update
    @user = current_user
  end


end
