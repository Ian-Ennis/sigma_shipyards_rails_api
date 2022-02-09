class ApplicationController < ActionController::API
  # before_action :require_login

  def encode_token(payload)
    puts "===entering encode_token (App controller)"
      JWT.encode(payload, '24nisfd892scazxbd843cs02e')
      puts "===leaving encode_token"
  end

  def auth_header
    puts "===entering auth_header (App controller)"
      request.headers['Authorization'].split(' ')[1]
    puts "===leaving auth header"
  end

  def decoded_token
    puts "===entering decoded_token (App controller)"
      if auth_header
        puts "--> auth_header exists"
          # token = auth_header
          begin
              JWT.decode(auth_header, '24nisfd892scazxbd843cs02e', true, algorithm: 'HS256')
          rescue JWT::DecodeError
              []
          end
      end
  end

  def session_user
    puts "===entering session_user (App controller)"
      decoded_hash = decoded_token
      if !decoded_hash.empty?
        puts "-->decoded_hash not empty"
          user_id = decoded_hash[0]['user_id']
          @user = User.find_by(id: user_id)
      else
        puts "-->decoded_hash is empty"
          nil 
      end
      puts "===leaving session_user"
  end

  def logged_in?
    puts "===entering logged_in? (App controller)"
      !!session_user
      puts "===leaving logged_in?"
  end

  def require_login
    puts "===entering require_login (App controller)"
   render json: {message: 'Please Login'}, status: :unauthorized unless logged_in?
   puts "===leaving require_login"
  end
end







