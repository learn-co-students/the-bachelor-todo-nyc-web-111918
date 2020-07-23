def get_first_name_of_season_winner(data, season)
  data.each do |k1,v1|
    if k1.to_s == season 
      v1.each do |element|
        if element["status"] == "Winner"
          x = element["name"]
          x1 = x.split(" ")
          return x1[0]
        end
      end
    end 
  end
end

def get_contestant_name(data, occupation)
  x = ""
  data.each do |k1,v1|
      v1.each do |element|
        if element["occupation"] == occupation
           return element["name"]
        end
      end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
    data.each do |k1,v1|
      v1.each do |element|
        if element["hometown"] == hometown
          counter+=1
        end
      end
    end
  return counter
end

def get_occupation(data, hometown)
  data.each do |k1,v1|
      v1.find do |element|
        if element["hometown"] == hometown
           return element["occupation"]
        end
      end
  end
end

def get_average_age_for_season(data, season)
  sum = 0
  counter = 0
  data.each do |k1,v1|
    if k1.to_s == season 
      v1.each do |element|
        counter += 1
        sum += element["age"].to_f
      end
    end 
  end
  y = sum/counter
  return y.round
end
