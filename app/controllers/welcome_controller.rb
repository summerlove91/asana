require 'asana'
class WelcomeController < ApplicationController
    protect_from_forgery with: :exception

    personal_access_token = '0/e01478c7f4133e93522a4b8c34b585a0'

    client = Asana::Client.new do |c|
      c.authentication :access_token, personal_access_token
    end

    me = client.users.me
    puts "Hello world! " + "My name is " + me.name + " and I my primary Asana workspace is " + me.workspaces[0].name + "."
    workspace = client.workspaces.find_all.first
    # 686618520067477
    # project_id = '686618191157056'
    # @tasks = client.tasks.find_all(project: project_id )
    # puts @tasks

    # def get_project_id
    #   @project_id = params[:project_id_input]
    #   puts @project_id
    #   @tasks = client.tasks.find_all(project: @project_id)
    #   puts @tasks
    # end

end
