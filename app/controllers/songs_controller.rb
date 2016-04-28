class SongsController < ApplicationController
	before_action :authenticate_user!, except: :index
	before_action :set_song, only: [ :show, :edit, :update, :destroy ]

	def index
		@songs = Song.all
	end

	def show
	end

	def new
		@song = Song.new
	end

	def edit
	end

	def create
		@song = Song.new(song_params)
		@song.user = current_user
		
		if @song.save
			redirect_to @song
		else
			render :new
		end
	end

	def update
		if @song.update(song_params)
			redirect_to @song
		else
			render :edit
		end
	end

	def destroy
	end

	private

	def song_params
		params.require(:song).permit(:title, :description)
	end

	def set_song
		@song = Song.find(params[:id])
	end
end
