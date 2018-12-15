class DeleteWorker
  include Sidekiq::Worker

  recurrence { minutely }

  def perform
    Message.where('created_at >= :thirty_days_ago', thiryty_days_ago: Time.now - 1.minute).destroy_all
  end
end
