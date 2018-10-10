require 'asana'

class Search < ApplicationRecord

  attr_reader :results
  attr_accessor :query
  validates :query, presence: true

  #  def initialize(query, params = {})
  #    personal_access_token = '0/e01478c7f4133e93522a4b8c34b585a0'
   #
  #    client = Asana::Client.new do |c|
  #      c.authentication :access_token, personal_access_token
  #    end
  #
  #   # perform request and assign results
  #   #  @params = params
  #   #  @project_id = '686618191157056'
  #    @project_id = params[:query]
  #
  #    @results = client.tasks.find_all(project: @project_id)
  #  end

  def perform
    puts "Hello world! "
    personal_access_token = '0/e01478c7f4133e93522a4b8c34b585a0'
    client = Asana::Client.new do |c|
       c.authentication :access_token, personal_access_token
    end
    @project_id = params[:search]
    @results = client.tasks.find_all(project: @project_id)
    puts @results
  end

end
