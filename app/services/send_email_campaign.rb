class SendEmailCampaign

  def initialize
    self.list_id = ENV.fetch('MAILCHIMP_LIST_ID')
    self.template_id = ENV.fetch('MAILCHIMP_TEMPLATE_ID')
    self.gibbon = Gibbon::Request.new
  end

  def self.call
    new.call
  end

  def call
    begin
      campaign = gibbon.campaigns.create(body: body)
      campaign_id = campaign.body.fetch(:id)
      gibbon.campaigns(campaign_id).actions.send.create
    rescue Gibbon::MailChimpError => e
      puts "Houston, we have a problem: #{e.message} - #{e.raw_body}"
    end
  end

  private

  attr_accessor :list_id,  :template_id, :gibbon

  def recipients 
    {
      list_id: list_id
    }
  end

  def settings 
    {
      subject_line: "Paul Howley Portfolio Update",
      title: "New Article",
      from_name: "PaulHowleyOnline",
      reply_to: "paulhowley1976@googlemail.com",
      template_id: 15225
    }
  end
  
  def body 
    {
      type: "regular",
      recipients: recipients,
      settings: settings
    }
  end
end
