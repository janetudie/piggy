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

	def add_green
		@aim = Aim.find(params[:id])
		@green = @aim.build_green
		@green.user_id = current_user.id
		@green.save

		redirect_to @aim
	end

	def add_red
		@aim = Aim.find(params[:id])
		@red = @aim.build_red
		@red.user_id = current_user.id
		@red.save

		redirect_to @aim
	end

	private

		def aim_params
			params_require(:aim).permit(:description)
		end
end
