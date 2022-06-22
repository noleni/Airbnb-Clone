class UsersController < ApplicationController
  skip_after_action :verify_authorized

  def show
    @user = current_user
    @bookings = @user.bookings.includes(:user)
  end
end
