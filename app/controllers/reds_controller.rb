class RedsController < ApplicationController
	def create
		@aim = Aim.find(params[:aim_id])
		if @aim.reds.create(user_id: current_user.id)
      redirect_to :back
    else
      flash.now[:error] = "Error."
      redirect_to :back
    end
  end
end
