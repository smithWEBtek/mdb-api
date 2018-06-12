class Api::ListsController < ApplicationController
 	before_action :set_list, only: [:show, :update, :destroy, :resources]
	
	def index
		@lists = List.all
		render json: @lists
	end

	def show
		render json: @list
	end

	def create
		@list = List.new(list_params)
		if @list.save
			render json: @list
		else
			render json: { errors: { message: 'list NOT created' }}
		end
	end

	def update
		@list.update(list_params)
		if @list.save
			render json: @list
		else
			render json: { errors: { message: 'list NOT updated' }}
		end
	end

	def destroy
		@list.delete
		render json: { message: 'list deleted' }
	end
	
	def resources
		@resources = @list.resources
		if @resources
			render json: @resources
		else
			render json: { errors: { message: 'list resources NOT found' }}
		end
	end

	private
	def set_list
		@list = List.find_by_id(params[:id])
		end
	def list_params
		params.require(:list).permit(:name, :date, :description)
	end

end