require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
#   Build a method, get_first_name_of_season_winner, that takes in two arguments, a hash called data (i.e. the data structure described above), and a season. The method should return the first name of that season's winner. Hint: you'll need to do some string manipulation to return only the first name of the winning lady.
# Think about how you will iterate through the hash to get to the level that contains a contestant's status.
# How will you check to see if a contestant's status equals "Winner"?

      data.each do |single_season, info|
        if single_season == season
          info.each do |contestant|
            if contestant["status"] == "Winner"

              return contestant["name"].split[0]
            end
          end
        end
      end


end

def get_contestant_name(data, occupation)
  # code here
  data.each do |single_season, info|
    info.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |single_season, info|
    info.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |single_season, info|
    info.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
    total_age = 0
    counter = 0
  data.each do |single_season, info|
    if single_season == season
      info.each do |contestant|
        total_age += contestant["age"].to_i
        counter += 1
      end
    end
  end
  (total_age/counter.to_f).round(0)
end
