# config/initializers/testing_pays.rb
if Rails.env.development? || Rails.env.test?
  ## Override Authipay URL"
  if ENV["AUTHIPAY_URL"]
    Authipay.set_url ENV["AUTHIPAY_URL"]
  end
end
