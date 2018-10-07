require "pry"

def get_first_name_of_season_winner(data, season)
  winner = ""

  data[season].each do |profile|
  #binding.pry
    profile.each do |label, value|
    #  binding.pry
      if label == "status" && value == "Winner"
        winner = profile['name']
      end
    end
  end

  winner_name = winner.split(" ")
  winner_name[0]
end

def get_contestant_name(data, occupation)
  match = ""

  data.each do |season, contestants|
    #binding.pry
    contestants.each do |profile|
      #binding.pry
      profile.each do |label, value|
        if label == "occupation" && value == occupation
          match = profile['name']
        end
      end
    end
  end

  match
end

def count_contestants_by_hometown(data, hometown)
  count = 0

  data.each do |season, contestants|
    #binding.pry
    contestants.each do |profile|
      #binding.pry
      profile.each do |label, value|
        if label == 'hometown' && value == hometown
          count += 1
        end
      end
    end
  end

  count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    #binding.pry
    contestants.each do |profile|
      #binding.pry
      profile.each do |label, value|
        if label == 'hometown' && value == hometown
          return profile['occupation']
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []

  data[season].each do |profile|
  #binding.pry
    profile.each do |label, value|
      if label == 'age'
        ages << value.to_f
      end
    end
  end

  (ages.reduce(:+) / ages.size).round
end
