class StarSystemsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :star_systems_not_found

  def index
    render json: StarSystem.all, status: :ok
  end

  private

  def star_systems_not_found
    render json: { error: 'Systems not found' }, status: :not_found
  end
  
end
