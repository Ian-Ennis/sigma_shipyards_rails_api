class ApplicationController < ActionController::API
    before_action :require_login
  
    def encode_token(payload)
      JWT.encode(payload, '93jc7sb59bnfkc72b49f7sn2k48d960')
    end
  
    def auth_header
      request.headers["Authorization"]
    end
  
    def decoded_token
      if auth_header
        token = auth_header.split(' ')[1]
        begin
          JWT.decode(token, '93jc7sb59bnfkc72b49f7sn2k48d960', true, algorithm: 'HS256')
        rescue JWT::DecodeError
          []
        end
      end
    end
  
    def session_user
      if decoded_hash = decoded_token
        if !decoded_hash.empty?
        user_id = decoded_hash[0]['user_id']
        @user = User.find_by(id: user_id)
        else
          nil
      end
    end
  
    def logged_in?
      !!session_user
    end
  
    def require_login
      render json: { message: 'Please Login (from application controller)' }, status: :unauthorized unless logged_in?
    end
  
  end
  