# 障害後全ユーザーにチケットを10枚発行する処理
namespace :distribute_ticket do
  desc "全ユーザーのticket_countをトランザクションで10増加させる"
  task transact: :environment do
    ActiveRecord::Base.transaction do
      User.find_each do |user|
        user.increment!(:ticket_count, 10)
      end
    end
  end
end
