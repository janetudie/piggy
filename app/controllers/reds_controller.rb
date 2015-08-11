class RedsController < ApplicationController
  def create
  	@red = Red.new
  	@red.aim_id = params[:aim_id]

 		@red.save

  end
end
