class HullPartsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :hull_parts_not_found


    def index
        render json: HullPart.all, status: :ok
    end

    private

    def hull_parts_not_found
        render json: { error: "Hull part not found" }, status: :not_found
    end


end
