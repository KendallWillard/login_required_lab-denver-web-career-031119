class SecretsController < ApplicationController

  before_action :require_login

  def show
    require_login
  end

  def require_login
    return head(:forbidden) unless session.include? :username
  end
end
