class WelcomeController < ApplicationController
  def index
  end

  def simple
    @toggle_status_search = Flipper.enabled?(:search) ? "enabled" : "disabled"
  end

  def users
    @users = User.all
  end

  def toggle_user
    @user = User.find(params[:id])
    MyJob.perform_later(@user.id)
  end

  def groups
  end
end
