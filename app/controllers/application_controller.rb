class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def wtf
    render text: "what the fuck"
  end
end

