# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Articles::Application.initialize!

Time::DATE_FORMATS[:created_date] = '%A, %b. %d %Y'
Time::DATE_FORMATS[:created_day] = '%b. %d %Y'