def get_first_name_of_season_winner(data, season)
  data[season].each do |playerdata|
    if playerdata["status"]=="Winner"
      return playerdata["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.values.each do |season|
    season.each do |playerdata|
      if playerdata["occupation"]==occupation
        return playerdata["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  contestants=0
  data.values.each do |season|
    season.each do |playerdata|
      if playerdata["hometown"]==hometown
        contestants+=1
      end
    end
  end
  return contestants
end

def get_occupation(data, hometown)
  data.values.each do |season|
    season.each do |playerdata|
      if playerdata["hometown"]==hometown
        return playerdata["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  sum=0
  playernumber=0
  data[season].each do |playerdata|
    sum=sum+playerdata["age"].to_i
    playernumber+=1
  end
  avg = sum.to_f/playernumber.to_f
  return avg.round
end
