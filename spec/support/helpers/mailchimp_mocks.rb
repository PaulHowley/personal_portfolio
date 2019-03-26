module MailchimpHelper
  def mock_campaigns
    stub_request(:post, "https://us20.api.mailchimp.com/3.0/campaigns").
      with(:body => "{\"type\":\"regular\",\"recipients\":{\"list_id\":\"0f11e79ec6\"},\"settings\":{\"subject_line\":\"Paul Howley Portfolio Update\",\"title\":\"New Article\",\"from_name\":\"PaulHowleyOnline\",\"reply_to\":\"paulhowley1976@googlemail.com\",\"template_id\":15225}}",
          :headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'Authorization'=>'Basic YXBpa2V5OjQwNTY3MGE0ZjNjODNlMDk1NjY4ZGEwOTViZjRmNzQxLXVzMjA=', 'Content-Type'=>'application/json', 'User-Agent'=>'Faraday v0.15.4'}).
      to_return(:status => 200, :body => "{
        \"id\": \"61330ecf85\",
        \"web_id\": 81653,
        \"type\": \"regular\",
        \"create_time\": \"2019-03-25T10:16:01+00:00\",
        \"archive_url\": \"http://eepurl.com/glK0zb\",
        \"long_archive_url\": \"https://us20.campaign-archive.com/?u=7e057b0d240a6bc519217de89&id=61330ecf85\",
        \"status\": \"save\",
        \"emails_sent\": 0,
        \"send_time\": \"\",
        \"content_type\": \"template\",
        \"needs_block_refresh\": true,
        \"has_logo_merge_tag\": false,
        \"resendable\": false,
        \"recipients\": {
          \"list_id\": \"0f11e79ec6\",
          \"list_is_active\": true,
          \"list_name\": \"Paul Howley\",
          \"segment_text\": \"\",
          \"recipient_count\": 3
        },
        \"settings\": {
          \"subject_line\": \"New Article\",
          \"title\": \"\",
          \"from_name\": \"Paul\",
          \"reply_to\": \"paulhowley1976@googlemail.com\",
          \"use_conversation\": false,
          \"to_name\": \"\",
          \"folder_id\": \"\",
          \"authenticate\": true,
          \"auto_footer\": false,
          \"inline_css\": false,
          \"auto_tweet\": false,
          \"fb_comments\": true,
          \"timewarp\": false,
          \"template_id\": 15225,
          \"drag_and_drop\": true
        },
        \"tracking\": {
          \"opens\": true,
          \"html_clicks\": true,
          \"text_clicks\": false,
          \"goal_tracking\": false,
          \"ecomm360\": false,
          \"google_analytics\": \"\",
          \"clicktale\": \"N\"
        },
        \"delivery_status\": {
          \"enabled\": false
        },
        \"_links\": [
          {
            \"rel\": \"parent\",
            \"href\": \"https://us20.api.mailchimp.com/3.0/campaigns\",
            \"method\": \"GET\",
            \"targetSchema\": \"https://us20.api.mailchimp.com/schema/3.0/Definitions/Campaigns/CollectionResponse.json\",
            \"schema\": \"https://us20.api.mailchimp.com/schema/3.0/CollectionLinks/Campaigns.json\"
          },
          {
            \"rel\": \"self\",
            \"href\": \"https://us20.api.mailchimp.com/3.0/campaigns/61330ecf85\",
            \"method\": \"GET\",
            \"targetSchema\": \"https://us20.api.mailchimp.com/schema/3.0/Definitions/Campaigns/Response.json\"
          },
          {
            \"rel\": \"delete\",
            \"href\": \"https://us20.api.mailchimp.com/3.0/campaigns/61330ecf85\",
            \"method\": \"DELETE\"
          },
          {
            \"rel\": \"send\",
            \"href\": \"https://us20.api.mailchimp.com/3.0/campaigns/61330ecf85/actions/send\",
            \"method\": \"POST\"
          },
          {
            \"rel\": \"cancel_send\",
            \"href\": \"https://us20.api.mailchimp.com/3.0/campaigns/61330ecf85/actions/cancel-send\",
            \"method\": \"POST\"
          },
          {
            \"rel\": \"feedback\",
            \"href\": \"https://us20.api.mailchimp.com/3.0/campaigns/61330ecf85/feedback\",
            \"method\": \"GET\",
            \"targetSchema\": \"https://us20.api.mailchimp.com/schema/3.0/Definitions/Campaigns/Feedback/CollectionResponse.json\"
          },
          {
            \"rel\": \"content\",
            \"href\": \"https://us20.api.mailchimp.com/3.0/campaigns/61330ecf85/content\",
            \"method\": \"GET\",
            \"targetSchema\": \"https://us20.api.mailchimp.com/schema/3.0/Definitions/Campaigns/Content/Response.json\"
          },
          {
            \"rel\": \"send_checklist\",
            \"href\": \"https://us20.api.mailchimp.com/3.0/campaigns/61330ecf85/send-checklist\",
            \"method\": \"GET\",
            \"targetSchema\": \"https://us20.api.mailchimp.com/schema/3.0/Definitions/Campaigns/Checklist/Response.json\"
          },
          {
            \"rel\": \"pause\",
            \"href\": \"https://us20.api.mailchimp.com/3.0/campaigns/61330ecf85/actions/pause\",
            \"method\": \"POST\"
          },
          {
            \"rel\": \"resume\",
            \"href\": \"https://us20.api.mailchimp.com/3.0/campaigns/61330ecf85/actions/resume\",
            \"method\": \"POST\"
          },
          {
            \"rel\": \"replicate\",
            \"href\": \"https://us20.api.mailchimp.com/3.0/campaigns/61330ecf85/actions/replicate\",
            \"method\": \"POST\"
          },
          {
            \"rel\": \"create_resend\",
            \"href\": \"https://us20.api.mailchimp.com/3.0/campaigns/61330ecf85/actions/create-resend\",
            \"method\": \"POST\"
          }
        ]
      }", :headers => {})

      stub_request(:post, "https://us20.api.mailchimp.com/3.0/campaigns/61330ecf85/actions/send").
         with(:body => "null",
              :headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'Authorization'=>'Basic YXBpa2V5OjQwNTY3MGE0ZjNjODNlMDk1NjY4ZGEwOTViZjRmNzQxLXVzMjA=', 'Content-Type'=>'application/json', 'User-Agent'=>'Faraday v0.15.4'}).
         to_return(:status => 204, :body => "", :headers => {})
  end
end