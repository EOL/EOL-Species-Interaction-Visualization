# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
EolSpeciesViz::Application.initialize!

require 'eol_web_service'

# This is updated during deployment with capistrano 
ENV['APP_VERSION'] = '1'

$WEB_SERVICE_API_KEY = 'feb857d0ede421a953623f4d380ed3b00e95f8bc'
$WEB_SERVICE_BASE_URL = 'http://www.eol.org/api/'
$WEB_SERVICE_TIMEOUT_SECONDS = 15

$ERROR_LOGGING=false