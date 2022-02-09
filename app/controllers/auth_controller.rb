class AuthController < ApplicationController
    skip_before_action :require_login, only: [:login, :auto_login]

    # allows existing users to login (become authorized)

    def login 
        @user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
                payload = {user_id: user.id}
                token = encode_token(payload)
                render json: {user: user, jwt: token, success: "Welcome back, #{user.username}"}
        else 
            render json: {failure: "Log in failed! Username or password invalid. (from auth controller)"}
        end
    end

    def auto_login
        if session_user
            render json: session_user
        else
            render json: {errors: "No user logged in (from auth controller)"}
        end
    end

    def user_is_authed
        render json: {message: "You have been authorized"}
    end

end