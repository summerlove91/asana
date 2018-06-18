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
    project_id = '686618191157056'
    # puts workspace.id
    @tasks = client.tasks.find_all(project: project_id)
    puts @tasks
    # task = client.tasks.find_all(assignee: "me", workspace: workspace.id)

    def get_project_id
      @project_id = params[:project_id_input]
      puts @project_id
      # @tasks = client.tasks.find_all(project: @project_id )
      # puts @tasks
      # my_project = client.projects.find_by_id(@project_id)
      # tasks = my_project.tasks
      # puts tasks
    end

end
