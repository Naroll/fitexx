class RecallsController < ApplicationController
	
	def new
	end

	def create
		@recall = Recall.new(recall_params)
	end

	private

	def recall_params
		params.require(:recall).permit(:name, :phone)
	end
end
