class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_flat, only: %i[show edit update destroy]

  def index
    @flats = policy_scope(Flat)

    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def new
    @flat = Flat.new
    authorize @flat
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user
    authorize @flat
    @flat.save
    redirect_to flats_path
  end

  def show
    authorize @flat
    @markers = [{
      lat: @flat.latitude,
      lng: @flat.longitude
    }]
    @booking = Booking.new
  end

  def edit
    authorize @flat
  end

  def update
    @flat.update(flat_params)
    authorize @flat
    redirect_to flats_path
  end

  def destroy
    authorize @flat
    @flat.destroy
    redirect_to flats_path, status: :see_other
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :photo)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end
end
