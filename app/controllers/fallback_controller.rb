# Controller logic: fallback requests for React Router.
# Leave this here to help deploy your app later!
class FallbackController < ActionController::Base
    def index
      render file: 'public/index.html'
    end
  end