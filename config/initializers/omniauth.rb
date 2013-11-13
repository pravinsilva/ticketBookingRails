OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1393700457535199', 'aec0a3bf1b34e7bf4ca0e4d947741d8c'
end