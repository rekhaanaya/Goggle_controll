OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '338428628242-odfqtr52hvncncm71dbqhapfrrr1101c.apps.googleusercontent.com', 'W-J4goOBPfnVV3JWNyNFRdvd', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
