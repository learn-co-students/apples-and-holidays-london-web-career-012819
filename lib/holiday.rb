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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].collect do |k, v|
    v.push(supply)
end
holiday_hash
end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring].collect do |k, v|
    v.push(supply)
end
holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

winter_array = holiday_hash[:winter].values
  winter_array.join
end
def all_supplies_in_holidays(holiday_hash)

holiday_hash.collect do |season, holiday|
  season_to_s = season.to_s #convert symbol "season" to string
  puts "#{season_to_s.capitalize}:"

    holiday.collect do |supply, value|
      holiday_to_s = supply.to_s #convert symbol "holiday" to string
      holiday_array = holiday_to_s.split("_") # convert the string to array

        holiday_array.collect do |element| #capitalize elements of array (holidays)
        element.capitalize!
        end
        back_to_string = holiday_array.join(" ") #convert holiday array back to string

      output = "  #{back_to_string}: " #print holiday
      joined = value.join(", ") #convert array to string
      output += "#{joined}"

      puts output

      end

  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
output_array = []
holiday_hash.each do |season, holiday|
  holiday.each do |supply, value|
    if value == "BBQ"
      output_array.push(supply)
    end
  end
  return output_array
end
