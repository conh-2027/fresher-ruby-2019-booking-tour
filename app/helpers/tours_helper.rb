module ToursHelper
  def convert_category
    Category.pluck :name, :id
  end
end
