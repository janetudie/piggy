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
		@aim = current_user.aims.build(aim_params)
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
			params_require(:aim).permit(:description)
		end
end
