class BookingsController < ApplicationController
  before_action :authenticate_user!, :load_tour

  def new
    @booking = Booking.new
  end
  

  def create
    @booking = current_user.bookings.build booking_params
    return unless current_user.account_of_user_enough(BookingService.new(@tour, @booking).total_money)
    if @booking.save!
      flash[:success] = t ".success_booking"
      redirect_to @tour
    else
      flash[:danger] = t ".success_booking"
      render :new
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