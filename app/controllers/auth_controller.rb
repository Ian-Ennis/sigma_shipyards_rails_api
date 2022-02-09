class AuthController < ApplicationController
    skip_before_action :require_login, only: [:login, :auto_login]

    # allows existing users to login (become authorized)

    def login 
        puts "======entering login (auth controller)"
        @user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
                payload = {user_id: user.id}
                token = encode_token(payload)
                render json: {user: user, jwt: token, success: "Hello, #{user.username}"}
        else 
            render json: {failure: "Log in failed! Username or password invalid. (from auth controller)"}
        end
    end

    def auto_login
        puts "======entering auto_login (auth controller)"
        if session_user
            render json: session_user
        else
            render json: {errors: "No user logged in (from auth controller)"}
        end
    end

    def user_is_authed
        puts "=======entering user_is_authed (auth controller)"
        render json: {message: "You have been authorized"}
    end

end