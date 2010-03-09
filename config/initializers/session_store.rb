# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_lala_session',
  :secret      => 'cffa5c2a6e5808e804b3ab6d4da69103ba81cd2b789a0833adbd8a4a55458596ea6e13b17563ca310d0a19f48f146c96932766c27f32a9a4c85394733d4632a1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
