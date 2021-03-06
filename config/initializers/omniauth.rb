Rails.application.config.middleware.use OmniAuth::Builder do  
  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET']
  provider :twitter, ENV['TWITTER_CONSUMER_KEY'], ENV['TWITTER_CONSUMER_SECRET']
  provider :openid, nil, :name => 'google', :identifier => 'https://www.google.com/accounts/o8/id'
end