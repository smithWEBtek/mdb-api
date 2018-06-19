class Api::SongsController < ApplicationController
	before_action :set_song, only: [:show, :update, :destroy, :resources]
	
	def index
		@songs = Song.all
		render json: @songs
	end

	def show
		render json: @song
	end

	def create
		@song = Song.new(song_params)
		if @song.save
			render json: @song
		else
			render json: { errors: { message: 'song NOT created' }}
		end
	end

	def update
		@song.update(song_params)
		if @song.save
			render json: @song
		else
			render json: { errors: { message: 'song NOT updated' }}
		end
	end

	def destroy
		@song.delete
		render json: { message: 'song deleted' }
	end
	
	def resources
		@resources = @song.resources
		if @resources
			render json: @resources
		else
			render json: { errors: { message: 'song resources NOT found' }}
		end
	end

	private
	def set_song
		@song = Song.find_by_id(params[:id])
		end
	def song_params
		params.require(:song).permit(:name)
	end

end
