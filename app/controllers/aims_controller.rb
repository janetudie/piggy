class AimsController < ApplicationController
	before_action :authenticate_user!

	# establish permission actions

	def index
		@aims = current_user.aims
	end

	def new
		@aim = Aim.new
	end

	def create
		@aim = current_user.aims.new(aim_params)
		if @aim.save
			redirect_to aim_path(id: @aim.id)
		end
	end

	def show
		@aim = Aim.find(params[:id])
		@reds = @aim.reds.count
		@greens = @aim.greens.count
	end

	def destroy
		@aim.destroy
	end


	private

		def aim_params
			params.require(:aim).permit(:description)
		end
end
