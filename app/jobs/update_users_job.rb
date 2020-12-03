class UpdateUsersJob < ApplicationJob
  queue_as :default

  def perform(users)
    users = User.find(users)
    users.each do |user|
      UpdateUserJob.perform_later(user.id)
    end
  end
end
