OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, "kgL1EhTtLMP1REciMlq7g", "mFT7wb1blOff6vZw4yYCdNY7lWthUY81ZJ3hFvrcMU"
end