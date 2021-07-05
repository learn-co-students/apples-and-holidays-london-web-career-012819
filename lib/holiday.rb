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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)

  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
new_arr = []
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.collect do |value|
        new_arr << value
      end
    end
  end
new_arr.flatten
end

def all_supplies_in_holidays(holiday_hash)
holiday_hash.each do |season, holiday|
  puts season.to_s.capitalize + ":"
  holiday.each do |fest, value|
    i = 0
    new_arr = fest.to_s.gsub(/_/, " ").split.each{ |word| word.capitalize! }

    puts "  #{ new_arr.join(" ")}: #{value.join(", ")}"
  end
end
end

def all_holidays_with_bbq(holiday_hash)
  new_arr = []
  holiday_hash.each do |season, holiday|
    holiday.each do |fest,value|
      if value.include? "BBQ"
        new_arr << fest
      end
    end
  end
new_arr
end
