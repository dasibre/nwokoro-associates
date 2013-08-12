class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
  end

  def login_required
  end
end
