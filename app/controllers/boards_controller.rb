class BoardsController < ApplicationController

def new
end

def create
	render plain: params[:board].inspect
end

end
