class Api::DocsController < ApplicationController
	before_action :set_doc, only: [:show, :update, :destroy, :resources]
	
	def index
		@docs = Doc.all
		render json: @docs
	end

	def show
		render json: @doc
	end

	def create
		@doc = Doc.new(doc_params)
		if @doc.save
			render json: @doc
		else
			render json: { errors: { message: 'doc NOT created' }}
		end
	end

	def update
		@doc.update(doc_params)
		if @doc.save
			render json: @doc
		else
			render json: { errors: { message: 'doc NOT updated' }}
		end
	end

	def destroy
		@doc.delete
		render json: { message: 'doc deleted' }
	end
	
	def resources
		@resources = @doc.resources
		if @resources
			render json: @resources
		else
			render json: { errors: { message: 'doc resources NOT found' }}
		end
	end

	private
	def set_doc
		@doc = Doc.find_by_id(params[:id])
		end
	def doc_params
		params.require(:doc).permit(:name, :description, :song_id, :format, :url)
	end

end
