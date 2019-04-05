class Article < ApplicationRecord
  validates :title, :text, presence: true

  after_create :send_email_campaign

  def send_email_campaign
    SendEmailCampaignJob.perform_async
  end
end
