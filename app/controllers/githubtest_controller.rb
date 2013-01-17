class GithubtestController < ApplicationController
  
  def authorize
    github = Github.new :client_id => '193e750aa594b5cb6eb4', :client_secret => '43ffc68d14944857ed4949df2c4ce7ecf13c0918'
    address = github.authorize_url :redirect_uri => 'http://localhost:3000/githubtest', :scope => 'repo'
    redirect_to address

  end

  def callback
    authorize_code = param[:code]
    token = github.get_token authorize_code
    access_token = token.token
  end

  def index


    @repos = Github.repos.list user: 'van5150', per_page:10


    p @repos

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @repo }
    end

  end

  def repo_list
  	#@repo =	Github.repos.list user: 'van5150'
	@repo =	Github.repos.all
  

  	respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @repo }
    end

  end
end
