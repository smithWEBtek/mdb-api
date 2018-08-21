class Api::DocsController < ApplicationController
	before_action :set_doc, only: [:show, :update, :destroy]
	
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
 
	private
	def set_doc
		@doc = Doc.find_by_id(params[:id])
		end
	def doc_params
		params.require(:doc).permit(:doc_id, :format, :description, :url)
	end

end
