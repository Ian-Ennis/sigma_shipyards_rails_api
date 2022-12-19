class SpaceshipsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :unable_to_locate_spaceship
  
  def index
    @user = current_user
    @spaceships = @user.spaceships
    render json: @spaceships, status: :ok
  end

  def create
    spaceship = Spaceship.create!(spaceship_params)
    render json: spaceship, status: :created
  end

  def show
    spaceship = find_spaceship
    render json: spaceship
  end

  def update
    spaceship = find_spaceship
    spaceship.update!(spaceship_params_update)
    render json: spaceship
  end

  def destroy
    spaceship = find_spaceship
    spaceship.destroy
    head :no_content
  end

  private

  def find_spaceship
    Spaceship.find(params[:id])
  end

  def spaceship_params
    params
      .permit(:user_id, :spaceship_name, :credits, :range, :strength, :nuclearCount, :fusionCount, :antimatterCount, :carbonCount, :grapheneCount, :neutronCount)
      .with_defaults(credits: 1_000_000, range: 0, strength: 0, nuclearCount: 0, fusionCount: 0, antimatterCount: 0, carbonCount: 0, grapheneCount: 0, neutronCount: 0)
  end

  def spaceship_params_update
    params.permit(:spaceship_name, :credits, :range, :strength, :nuclearCount, :fusionCount, :antimatterCount,
    :carbonCount, :grapheneCount, :neutronCount)
  end

  def unable_to_locate_spaceship
    render json: { error: 'Spaceship not found' }, status: :not_found
  end
  
end
