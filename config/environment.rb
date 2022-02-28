ENV["RACK_ENV"] ||= "development"
# ENV["LOAD_PATH"] ||= "./app"

require "bundler/setup"
Bundler.require(:default, ENV["RACK_ENV"])

require_all "app"

require_relative "../constants/urls"
