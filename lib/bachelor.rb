def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestants|
    if contestants["status"] == "Winner"
      return contestants["name"].split(' ')[0]
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestants|
      if contestants["occupation"] == occupation
        return contestants["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  i = 0
  data.each do |season, contestants|
    contestants.each do |contestants|
      if contestants["hometown"] == hometown
        i += 1
      end
    end
  end
  i
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestants|
      if contestants["hometown"] == hometown
        return contestants["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  sum_of_ages = 0
  contestant_count = 0
  data[season].each do |contestants|
    sum_of_ages += contestants["age"].to_i
    contestant_count += 1
  end
  return (sum_of_ages / contestant_count.to_f).round
end
