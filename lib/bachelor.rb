# def get_first_name_of_season_winner(data, season)
#   data[season].each do |season, season_array|
#     season_array.each do |contestant_information|
#       if contestant_information[:status] == "Winner"
#         return contestant_information[:name].split(" ")[0]
#       end
#     end
#   end
# end

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestants|
    if contestants["status"] == "Winner"
      return contestants["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, season_array|
    season_array.each do |contestant_information|
      if contestant_information["occupation"] == occupation
        return contestant_information["name"]
      end
    end 
  end 
end 

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, season_array|
    season_array.each do |contestant_information|
      if contestant_information["hometown"] == hometown
        counter += 1
      end 
    end
  end

  return counter
end

def get_occupation(data, hometown)
  data.each do |season, season_array|
    season_array.each do |contestant_information|
      if contestant_information["hometown"] == hometown
        return contestant_information["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age = 0
  number_of_contestants = 0

  data[season].each do |contestants|
    contestants.each do |contestant_key, contestant_value|
      if contestant_key == "age"
        number_of_contestants += 1
        age += contestant_value.to_f
      end
    end 
  end
  return (age / number_of_contestants).round
end
