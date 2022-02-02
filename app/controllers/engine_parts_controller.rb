class EnginePartsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :engine_parts_not_found


    def index
        render json: EnginePart.all, status: :ok
    end

    private
    
    def engine_parts_not_found
        render json: { error: "Engine part not found" }, status: :not_found
    end
end
