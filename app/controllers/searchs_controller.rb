class SearchsController < ApplicationController
  def search
    if params[:term].nil?
      @tours = []
    else
      @tours = Tour.search params[:term], highlight: true
    end
  end
end