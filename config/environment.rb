require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'
FootballData.configure do |config|
    # get api key at 'http://api.football-data.org/register'
    config.api_key = 01864b7be3a547d18d7b5eb2e94e7da6

    # default api version is 'alpha' if not setted
    config.api_version = 'alpha'

    # the default control method is 'full' if not setted
    # see request section on 'http://api.football-data.org/documentation'
    config.response_control = 'minified'
end