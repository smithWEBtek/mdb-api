class Api::ArtistsController < ApplicationController
	before_action :set_artist, only: [:show, :update, :destroy, :resources]
	
	def index
		@artists = Artist.all
		render json: @artists
	end

	def show
		render json: @artist
	end

	def create
		@artist = Artist.new(artist_params)
		if @artist.save
			render json: @artist
		else
			render json: { errors: { message: 'artist NOT created' }}
		end
	end

	def update
		@artist.update(artist_params)
		if @artist.save
			render json: @artist
		else
			render json: { errors: { message: 'artist NOT updated' }}
		end
	end

	def destroy
		@artist.delete
		render json: { message: 'artist deleted' }
	end

	private
	def set_artist
		@artist = Artist.find_by_id(params[:id])
		end
	def artist_params
		params.require(:artist).permit(:name)
	end

end
