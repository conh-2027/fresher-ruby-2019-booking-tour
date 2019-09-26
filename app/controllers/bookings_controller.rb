class BookingsController < ApplicationController
  before_action :authenticate_user!, :load_tour, only: :create

  def create
    @booking = current_user.bookings.build booking_params
    @booking.tour = @tour
    booking_sercise = BookingService.new(@booking, params[:tour_price].to_i)
    
    if booking_sercise.booking_request? && @booking.save!
      booking_sercise.bank_account_after_booking
      respond_to :js
    end
  end

  private

  def booking_params
    params.require(:booking).permit Booking::BOOKING_PARAMS
  end

  def load_tour
    @tour = Tour.find_by id: params[:tour_id]

    return if @tour
    flash[:danger] = t ".not_found"
    redirect_to tours_path
  end
end
