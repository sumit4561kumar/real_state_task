class VeryLongTask < ApplicationJob
  queue_as :default
  # call this method when you have to perform the very long task
  def perform(asset, current_user)
    # sleep 60
    true # the task was completed correctly
    ContactMailer.submission(asset, current_user).deliver
  end
end