class SongsController < ApplicationController
	def index
		@songs = Song.all
	end

	def show
		@song = Song.find(params[:id])
	end

	def new
	end

	def edit
	end

	def create
	end

	def update
	end

	def destroy
	end

end
