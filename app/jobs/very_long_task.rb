class VeryLongTask < ApplicationJob
  queue_as :default
  # call this method when you have to perform the very long task
  def perform(asset_id, user_id)
    sleep 60
    true # the task was completed correctly
    asset = Asset.find(asset_id)
    user = User.find(user_id)
    ContactMailer.submission(asset, user).deliver
  end
end