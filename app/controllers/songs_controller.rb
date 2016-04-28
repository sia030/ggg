class SongsController < ApplicationController
	before_action :authenticate_user!, except: :index

	def index
		@songs = Song.all
	end

	def show
		@song = Song.find(params[:id])
	end

	def new
		@song = Song.new
	end

	def edit
	end

	def create
		@song = Song.new(params.require(:song).permit(:title, :description))
		@song.user = current_user
		
		if @song.save
			redirect_to @song
		else
			render :new
		end
	end

	def update
	end

	def destroy
	end

end
