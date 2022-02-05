class SpaceshipsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :unable_to_locate_spaceship

    def index
        render json: Spaceship.all, status: :ok
    end

    def create
        puts '====inside create method===='
        spaceship = Spaceship.create!(spaceship_params)
        puts spaceship 'is the spaceship'
        render json: spaceship, status: :created
        puts '====leaving create method===='
    end

    def update
        spaceship = find_spaceship
        spaceship.update(spaceship_params)
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
        params.require(:spaceship).permit(:spaceship_name, :user_id)    
    end

    def unable_to_locate_spaceship
        render json: { error: "Spaceship not found" }, status: :not_found
    end

end
