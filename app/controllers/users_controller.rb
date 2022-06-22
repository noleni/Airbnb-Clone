class UsersController < ApplicationController
  skip_after_action :verify_authorized

  def show
    @user = current_user
    @bookings = @user.bookings.includes(:user)
    @my_flats = @user.flats.includes(:user)
    @my_flats_bookings = @user.user_rented_flats
  end
end
