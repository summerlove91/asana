require 'asana'

class SearchesController < ApplicationController
  before_action :show
  # def show
  #   if params[:query]
  #   @search = Search.new(params[:query])
  #   end
  # end

  def show
    puts "hee"
    if params[:search]
      @search = Search.new(params[:search])
      @search.perform if @search.valid?
    else
      @search = Search.new
    end
  end
end

