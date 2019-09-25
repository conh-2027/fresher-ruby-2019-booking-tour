class BookingService
  attr_reader :price, :people_number
  def initialize tour, booking
    @tour = tour
    @booking = booking
  end

  def total_money
    @tour.price*@booking.people_number
  end
end