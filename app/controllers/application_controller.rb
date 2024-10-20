class ApplicationController < ActionController::Base
  helper_method :current_user
  def current_user
    session_hash=cookies[:session_hash]
    return Customer.find_by(session_hash: session_hash)
  end
end
