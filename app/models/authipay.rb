require 'digest'

class Authipay
  @@connect_url = "https://test.ipg-online.com/connect/gateway/processing"

  ## URLs - use the ENV Var and fall back to the connect URL
  def self.url
    ENV["AUTHIPAY_URL"] || @@connect_url
  end

  def self.set_url new_url
    @@connect_url = new_url
  end

  ## Hashing
  def self.create_hash value, currency, datetime
    # Concatenate the strings
    stringToHash = [Authipay.store_id, datetime, value, currency, Authipay.shared_secret].join("")
    # convert each value to its hex equivalent
    hashed = stringToHash.unpack("H*").first
    # Use SHA256 on the hex string
    Digest::SHA256.hexdigest hashed
  end

  ## Store ID
  def self.store_id
    ENV["AUTHIPAY_STORE_ID"]
  end

  def self.user_id
    ENV["AUTHIPAY_USER_ID"]
  end

  def self.shared_secret
    ENV["AUTHIPAY_SHARED_SECRET"]
  end
end
