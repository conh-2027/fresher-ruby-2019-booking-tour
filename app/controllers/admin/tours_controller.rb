class Admin::ToursController < Admin::BaseController
  before_action :load_tour, only: %i(edit update destroy)
  before_action :set_search, only: :index

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

  def update
    if @tour.update tour_params
      flash[:success] = t ".update_success"
      redirect_to admin_tours_path
    else
      flash[:danger] = t ".update_fail"
      render :edit
    end
  end

  def destroy
    if @tour.destroy
      flash[:success] = t ".destroy_success"
    else
      flash[:danger] = t ".destory_fail"
    end
    redirect_to admin_tours_path
  end

  private

  def tour_params
    params.require(:tour).permit Tour::TOUR_PARAMS
  end

  def load_tour
    @tour = Tour.find_by id: params[:id]

    return if @tour
    flash[:danger] = t ".not_found"
    redirect_to admin_tours_path
  end
end
