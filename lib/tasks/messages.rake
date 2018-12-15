namespace :messages do
  desc "TODO"
  task delete_1_hour_old: :environment do
    Message.where(['created_at < ?', 1.minute.ago]).destroy_all
  end
end
