module Api

	class PlacesController < ApplicationController

		def search
			if city_params.present?
				render json: Place.where(city: city_params[:city])
			elsif place_type_params.present?
				render json: Place.where(place_type: place_type_params[:place_type]) 
			elsif price_params.present?
				render json: Place.where("price <= ?", price_params[:max_price])
			else
				head 501
			end
			# render json: Host.find(params[:id])
		end

		private
		def city_params
			params.permit(:city)
		end

		def price_params
			params.permit(:max_price)
		end

		def place_type_params
			params.permit(:place_type)
		end

	end
end