class Api::GenresController < ApplicationController
	before_action :set_genre, only: [:show, :update, :destroy, :resources]
	
	def index
		@genres = Genre.all
		render json: @genres
	end

	def show
		render json: @genre
	end

	def create
		@genre = Genre.new(genre_params)
		if @genre.save
			render json: @genre
		else
			render json: { errors: { message: 'genre NOT created' }}
		end
	end

	def update
		@genre.update(genre_params)
		if @genre.save
			render json: @genre
		else
			render json: { errors: { message: 'genre NOT updated' }}
		end
	end

	def destroy
		@genre.delete
		render json: { message: 'genre deleted' }
	end
	
	def resources
		@resources = @genre.resources
		if @resources
			render json: @resources
		else
			render json: { errors: { message: 'genre resources NOT found' }}
		end
	end

	private
	def set_genre
		@genre = Genre.find_by_id(params[:id])
		end
	def genre_params
		params.require(:genre).permit(:name, :description)
	end

end
