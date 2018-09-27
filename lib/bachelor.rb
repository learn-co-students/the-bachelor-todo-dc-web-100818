require "pry"

def get_first_name_of_season_winner(data, season)
  data.each do |season_number, season_data|
    if season_number == "#{season}"
      season_data.each do |season_data|
        if season_data.values.include? ("Winner")
          winner_name = season_data.values[0].split
          return winner_name[0]
        end 
      end 
    end 
  end 
end

def get_contestant_name(data, occupation)
  data.each do |season_number, season_data|
    season_data.each do |season_data|
      if season_data.values.include? ("#{occupation}")
        return season_data.values[0]
      end
    end 
  end 
end

def count_contestants_by_hometown(data, hometown)
  counter = 0 
  data.each do |season_number, season_data|
    season_data.each do |season_data|
      if season_data.values.include? ("#{hometown}")
        counter = counter + 1
      end 
    end 
  end 
  counter
end

def get_occupation(data, hometown)
  array = []
  data.each do |season_number, season_data|
    season_data.each do |season_data|
      if season_data.values.include? ("#{hometown}")
        array << season_data.values[3]
      end
    end 
  end 
  array[0]
end

def get_average_age_for_season(data, season)
  array = []
  data.each do |season_number, season_data|
    if season_number == season 
      season_data.each do |season_data|
        array << season_data.values[1]
      end 
    end 
  end 
  array.collect! do |i|
    i.to_i
  end
  array_sum = 0
  array.each do |i|
    array_sum = array_sum + i
  end 
  array_avg = (array_sum / array.length.to_f).round
  array_avg
end
