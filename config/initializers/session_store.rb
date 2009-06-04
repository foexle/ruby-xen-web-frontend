# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ruby-xen-web-frontend_session',
  :secret      => '946ef416635b941e3b8bfb1d4e55acd570675b9a0f9712875292e067807624d9038e8fb1df9d647cfc6b80ee4bd173182e805e8bcfc6c000bc98b6c4455138f8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
