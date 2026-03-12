class UserComponent < ViewComponent::Base

  def before_render
    @first_name = @user.name.split(" ").first
  end

  def initialize(user: nil)
    @user = user
  end
end