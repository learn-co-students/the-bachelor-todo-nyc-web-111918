require "pry"

def get_first_name_of_season_winner(data, season)
  data.map do |s, season_data|
    if s == season
    season_data.map do |contestant|
      if contestant["status"] == "Winner"
        contestant["name"].split.first 
      end
    end
  end
  end.flatten.compact[0]
end

def get_contestant_name(data, occupation)
  data.map do |season, season_data|
    season_data.map do |contestant|
      if contestant["occupation"] == occupation
        contestant["name"]
      end
    end
  end.flatten.compact[0]
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, season_data|
    season_data.each do |contestant|
        if contestant["hometown"] == hometown
          counter += 1 
        end
    end  
  end
  counter
end

def get_occupation(data, hometown)
  data.map do |season, season_data|
    season_data.map do |contestant|
      if contestant["hometown"] == hometown
        contestant["occupation"]
    end
    end
  end.flatten.compact[0]
end

def get_average_age_for_season(data, season)
  counter = 0 
  total = 0 
  data.each do |s, season_data|
    if s == season 
      season_data.each do |contestant|
        counter += 1 
        total += contestant["age"].to_f
      end
    end
  end
  average = total / counter
  average.round
end
