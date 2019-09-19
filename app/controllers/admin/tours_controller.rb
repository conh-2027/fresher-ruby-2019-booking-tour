class Admin::ToursController < Admin::BaseController
  def index
    @tours = Tour.last_tours.page(params[:page])
      .per Settings.paging.paging_number
  end

  def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.new tour_params

    if @tour.save
      flash[:success] = t ".success_created"
      redirect_to admin_tours_path
    else
      flash[:fail] = t ".fail_create"
      render :new
    end
  end

  private

  def tour_params
    params.require(:tour).permit Tour::TOUR_PARAMS
  end
end
