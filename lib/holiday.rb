require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
  # YEAhhhh ! !!!! !!! !!! !!! !! !! !! !! !  !! !! !! !! ! ! 
  
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
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  # holiday_hash[:winter].each do |attribute, data|
  #   if attribute == :christmas || :new_years
     
      holiday_hash[:winter].each do |item, data|
        data.push("Balloons")
        #binding.pry
     
      end 
    end 



def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash[:spring][:memorial_day].push(supply)
  
#   holiday_hash[:spring].each do |item, data|
#     data.push(data)
#   end 
end



def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].map do | key, value |
    value
  end.flatten 
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  
  holiday_hash.each do |key, value|
    puts "#{key}:".capitalize
    holiday_hash[key].each do |value, ike|
      #binding.pry
     array = value.to_s.split("_") 
     puts "  " + array.map { |word| word.capitalize }.join(" ") + ": " + ike.map { |i| "" + i.to_s + "" }.join(", ")
    end
  end
  
  # " + ike.map { |i| " " + i.to_s + "" }.join(", ")"

  
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  output_array = []
  holiday_hash.each do |season, holiday| #Iterate over seasons
    holiday.each do |supply, value| #Iterate over holidays
      value.each do |element|  #Iterate over value array
        if element == "BBQ"
        output_array.push(supply)
        end
      end
    end
  end
  puts output_array
end
