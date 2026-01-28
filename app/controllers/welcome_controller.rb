class WelcomeController < ApplicationController
  def index
  end

  def simple
    @toggle_status_search = Flipper.enabled?(:search) ? "enabled" : "disabled"
  end

  def users
    @users = User.all
  end

  def groups
  end
end
