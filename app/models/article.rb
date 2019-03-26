class Article < ApplicationRecord
  validates :title, :text, presence: true

  after_create :send_email_campaign

  # Add spec to article model spec, that when an article is created
  # it calls SendEmailCampaign class.  Mock this out.

  def send_email_campaign
    SendEmailCampaign.call
  end
end
