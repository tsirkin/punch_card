# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_punch_card_app_session',
  :secret      => '35d0fff4fc7b642ca2afd880c153e7bff1528eb9de1f9877d85439af4162c40f864a531ffa7fb275776d43f15b9ae37f0d0c35cacd91c978abbd60cc4e5d98c4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
