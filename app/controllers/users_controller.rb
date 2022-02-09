class UsersController < ApplicationController
    skip_before_action :require_login, only: [:create]

      # handles user signing up
    def create 
        puts "===entering users create"
        user = User.create(user_params)
        puts "===user: #{user}"
        if (user.valid?) 
            puts "yes"
            payload = {user_id: user.id}
            token = encode_token(payload)
            render json: {user: user, include: [jwt: token]}, status: :ok
        else 
            puts "no"
            render json: {errors: user.errors.full_messages}, status: :not_acceptable
        end
        puts "===leaving users create"
    end

    private

    def user_params
        puts "===entering user_params"
        params.permit(:username, :password)
        puts "===leaving user_params"
    end
end
