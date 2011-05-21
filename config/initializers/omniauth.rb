Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'cUX94SsK8Eo44zeAVyfhDg', 'hcl6SakglEddswGPbxSbgINPS84NAvyinoSk5BvBF9c'
  # provider :factbook, 'APP_ID', 'APP_SECRET'
  # provider :github, 'CLIENT ID', 'SECRET'
end