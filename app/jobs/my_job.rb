class MyJob < ApplicationJob
  self.queue_adapter = :solid_queue
  queue_as :low_priority

  def perform(*args)
    user = User.find(args[0])
    puts "Toggling for #{user.name}"
    toggle_user(user)
  end

  private

  def toggle_user(user)
    if Flipper.enabled?(:search, user)
      Flipper.disable(:search, user)
    else
      Flipper.enable(:search, user)
    end
  end
end