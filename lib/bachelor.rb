require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each do |contestants|
    if contestants["status"] == 'Winner'
       return contestants["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant['hometown'] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end


def get_average_age_for_season(data, season)
  contestant_ages = []
  data[season].map do |contestants|
      contestant_ages << contestants["age"].to_f
  end
  (contestant_ages.inject {|sum, n| sum + n} / contestant_ages.size).round
end
