class BettingController < ApplicationController
    
require 'pry'

def index
    # response = HTTParty.get('http://api.football-data.org/alpha/teams/9/players')
    response = HTTParty.get('http://football-api.com/api/?Action=today&APIKey=3aa8b242-7e49-ba2e-2750a3976df7&comp_id=1204')
    soccer = response.body
    @parsed_response = JSON.parse(soccer)
    # pry.binding
    @today_games = @parsed_response['matches']
end

def match_info
    response = HTTParty.get('http://football-api.com/api/?Action=today&APIKey=3aa8b242-7e49-ba2e-2750a3976df7&comp_id=1204')
    soccer = response.body
    @parsed_response = JSON.parse(soccer)
    @today_games = @parsed_response['matches']
end

def show
    
end

end

