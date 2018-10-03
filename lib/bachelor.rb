require "pry"
#require 'json'
#data = JSON.parse(File.read('../spec/fixtures/contestants.json'))

def get_first_name_of_season_winner(data, season)
  winners_name = ""
  winner = nil
  data[season].each do |arr_el|
    # puts arr_el.inspect
    if arr_el["status"] == "Winner"
      winners_name = arr_el["name"]
      winner = winners_name.split(" ").first
    end
  end
  return winner
end
  

#get_first_name_of_season_winner(data, "season 14")

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
