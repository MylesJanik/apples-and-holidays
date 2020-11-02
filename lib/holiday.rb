require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array

  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season]{holiday_name}
  holiday_hash[season][holiday_name] = supply_array
  return holiday_hash


end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  new_array = []
  holiday_hash.each do |first, second|
    if first == :winter
      second.each do |s1, s2|
        s2.each do |element|
          new_array << element
        end
      end
      
    end
  end
  return new_array
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

    holiday_hash.each do |first, second|
      if first == :winter
        puts "Winter:"
        second.each do |f, s|
          if f == :christmas
            puts "  Christmas: " + s[0] + ", " + s[1]
          elsif f == :new_years
            puts "  New Years: " + s[0]
          end
        end
      elsif first == :summer
        puts "Summer:"
        second.each do |f, s|
          if f == :fourth_of_july
            puts "  Fourth Of July: " + s[0] + ", " + s[1]
          end
        end
      elsif first == :fall
        puts "Fall:"
        second.each do |f, s|
          if f == :thanksgiving
            puts "  Thanksgiving: " + s[0]
          end
        end
      elsif first == :spring
        puts "Spring:"
        second.each do |f, s|
          if f == :memorial_day
            puts "  Memorial Day: " + s[0]
          end
        end
      end
    end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  new_array = []
  holiday_hash.each do |first, second|
    second.each do |f, s|
      s.each do |s1|
        if s1.include? "BBQ"
          new_array << f
        end
      end
    end
  end
  return new_array

end







