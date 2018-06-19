class Api::Mp3sController < ApplicationController
	before_action :set_mp3, only: [:show, :update, :destroy, :resources]
	
	def index
		@mp3s = Mp3.all
		render json: @mp3s
	end

	def show
		render json: @mp3
	end

	def create
		@mp3 = Mp3.new(mp3_params)
		if @mp3.save
			render json: @mp3
		else
			render json: { errors: { message: 'mp3 NOT created' }}
		end
	end

	def update
		@mp3.update(mp3_params)
		if @mp3.save
			render json: @mp3
		else
			render json: { errors: { message: 'mp3 NOT updated' }}
		end
	end

	def destroy
		@mp3.delete
		render json: { message: 'mp3 deleted' }
	end
 
	private
	def set_mp3
		@mp3 = Mp3.find_by_id(params[:id])
		end
	def mp3_params
		params.require(:mp3).permit(:name)
	end

end
	
