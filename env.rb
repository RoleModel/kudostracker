# Local override
dotenv = File.expand_path("../.env_overrides.rb", __FILE__)
require dotenv if File.exist?(dotenv)

ENV["RAILS_ENV"] ||= "development"
ENV["APP_PASSWORD"] ||= "ogi3n1"
