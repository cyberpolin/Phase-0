# 4.2 Numbers, Letters, and Variable Assignment

What does puts do?
- It just Put String on the terminal, and adds a new line, you can use print, both of them return nil.
So if you want to print something to terminal and return at the same time use p.

What is an integer? What is a float?
- Integer are like complete numbers. 1,2,3...99999.
Float are like a hole number and a bit more, for example one and a half is 1.5.

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
- It is pretty simple, a division always return a Integer number or a complete number, and a float division return the complete number and a little more. Let's imagine you want to know how many weeks have passed in this year and you know we are in the 61th day of the year, we also know each week have 7 days. So if we divide 61/7 it give us 8 week. (That's a Integer division).

But wait... what about the extra days, today is wednesday...

Well let's do a Float division 61/7.0. Equals 8.714. 8 weeks and a little more!


===============================
Mini Challenges
=============================

The numbers.rb
'''ruby
class TimeConverter

  def convert_years_to_hours(year)
    hour_in_year = 365*24
    year*hour_in_year
  end

  def convert_hour_to_minutes(hour)
    hour*60
  end

  def convert_minutes_to_second(minute)
    minute*60
  end

  def convert_decade_to_minutes(decade)
    years = decade * 10
    hours = convert_years_to_hours(years)
    convert_hour_to_minutes(hours)
  end

  def convert_seconds_to_year(seconds)
    minutes = seconds/60
    hours = minutes/60
    days = hours/24
    days/365
  end

  def age_in_seconds(age)
    hours = convert_years_to_hours(age)
    minute = convert_hour_to_minutes(hours)
    convert_minutes_to_second(minute)
  end


end

time = TimeConverter.new
time.convert_decade_to_minutes(1)
'''

The Rspec, i only use one scenario in each challenge because they are straight forward

'''ruby
require_relative "../2-5_numbers"

describe TimeConverter do

  let(:converter) { TimeConverter.new}

  describe "#convert_years_to_hours" do
    it "converts 1 year" do
      expect(converter.convert_years_to_hours(1)).to eq 8760
    end
  end

  describe "#convert_decade_to_minutes" do
    it "converts a decade into minutes" do
      expect(converter.convert_decade_to_minutes(1)).to eq 5256000
    end
  end

  describe "#age_in_seconds" do
    it "converts a given age in to seconds" do
      expect(converter.age_in_seconds(1)).to eq 31536000
    end
  end

  describe "#convert_seconds_to_year" do
    it "converts from seconds to year" do
      expect(converter.convert_seconds_to_year(31536000)).to eq 1
    end
  end

end
'''

## Release 7
How does Ruby handle addition, subtraction, multiplication, and division of numbers?
- The same way a calculator does it, it is also important to comment that we add, substact, divide, and multiply float with integers, the result would be a float.

Also we can add, and multiply strings and arrays.

What is the difference between integers and floats?
- I already answer that before, but is simple as saying float has a floating point and the other don't

What is the difference between integer and float division?
- Also answered before, a float division will have a float and a result and no residue, in the other hand the Integer division will have a Integer result and generally a residue.

What are strings? Why and when would you use them?
- They are a "array" of characters, and we use them as information, as IT stand for "Information" Technology it make sense to manipulate information with software. We manipulate them to present and retrieve information to the user.

What are local variables? Why and when would you use them?
- We can think of a variable as a blank space to put stuff, that stuff is data, we will use it all the time in software, and help us manipulating other data and getting new information from that.

How was this challenge? Did you get a good review of some of the basics?
- It was super cool, i got lost on rspec, but i believe i did a good job at the end.


###URLS