class Api::CharitiesController < ApplicationController

  def index
    @charities = HTTP.get("http://data.orghunter.com/v1/charitysearch?user_key=#{Rails.application.credentials.charities_api[:api_key]}&searchTerm=#{params[:search]}").parse

    render json: @charities
  end
  
end
