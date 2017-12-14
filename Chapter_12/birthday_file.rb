require 'pry'

birthday_dates = Hash.new

f = File.open("birthdays.txt", "r")

f.each_line do |line|
   line = line.chomp
	 name = line.split(",")[0]  # name
	 date = line.split(",")[1]  # date
	 year = line.split(",")[2]  # year
	 birthday_dates[name] = [date[-6..-1], year[-4..-1]]
	end


f.close
puts ">> Whose birthday do you want"
name = gets.chomp

full = birthday_dates[name]
month = birthday_dates[name][0]
year = birthday_dates[name][1]
now = Time.new.year
age = now.to_i - year.to_i
current_month = Time.new.month


def convert(monthstr)
        case monthstr
                when "Jan"  then  1
                when "Feb"  then  2
                when "Mar"  then  3
                when "Apr"  then  4
                when "May"  then  5
                when "Jun"  then  6
                when "Jul"  then  7
                when "Aug"  then  8
                when "Sep"  then  9
                when "Oct"  then 10
                when "Nov"  then 11
                when "Dec"  then 12
        end
end

month_to_convert = month[0,3]  #0,3 range give Oct instead of Oct 22
# which is the current month value

# returns number value of month get Oct returns 10
birthday_month = convert(month_to_convert)
b_day = month[4,5].to_i
today = Time.new.day.to_i


# see if birthday has already passed this year 
if birthday_month.to_i < current_month.to_i || (current_month.to_i == birthday_month.to_i && today < b_day) 
  age -= 1
end


puts "#{name}'s was born on #{month}, #{year}."
puts "#{name}'s is #{age} years old."
puts "#{name} will be #{age} years old in #{now}.
"