# config/initializers/testing_pays.rb
if Rails.env.development? || Rails.env.test?
  ## Override Authipay URL"

  #Authipay.set_url "--https://test.ipg-online.com/connect/gateway/processing"
end
