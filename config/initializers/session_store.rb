# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_humongous_session',
  :secret      => '3e9095c6926c5f2c6f1fa11c007573c14032e386b5d921c61421ba78c2f5845eb49fb746887be99abf8ffd3e908153f9f03eded6ac22acec5d11431a30997b84'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
