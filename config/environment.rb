# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Clockd::Application.initialize!

Date::DATE_FORMATS[:default]="%m/%d/%Y at %I:%M"