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
  holiday_hash[:winter].collect do |key, value|
    value << supply
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supplies = []

  holiday_hash[:winter].each do |key, value|
    value.each do |item|
      supplies << item
    end
  end

  supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |season, holiday|
    season_s = season.to_s
    season_s[0] = season_s[0].capitalize
    puts "#{season_s}:"

    holiday.each do |name, items|
      names_s = name.to_s
      #names_s[0] = names_s[0].capitalize
      names_s_array = names_s.split("_")

      names_s_array.collect do |value|
        value[0] = value[0].capitalize
      end

      names_s = names_s_array.join(" ")

      item_s = ""
      items.each_with_index do |item, index|
        if index == (items.length - 1)
          item_s += "#{item}"
        else
          item_s += "#{item}, "
        end
      end
      puts "  #{names_s}: #{item_s}"
    end
  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_array = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday_name, items|
      items.each do |item|
        if item == "BBQ"
          bbq_array << holiday_name
        end
      end
    end
  end

  bbq_array








end
