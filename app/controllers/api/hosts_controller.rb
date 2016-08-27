module Api

	class HostsController < ApplicationController

		def show
			render json: Host.find(params[:id])
		end

	end
end