class Unit
  def initialize(value)
    @value = value
  end
end
class Celsius < Unit
  
  def to_farenheit
    puts "#{(@value * 9/5) + 32}" + " " + "Farenheit"
  end
  def to_kelvin
    puts "#{@value + 273.15}°" + " " + "Kelvin"
  end
end

class Farenheit < Unit
  
  def to_celsius
    puts "#{(@value - 32) * 5/9}°" + " " + "Celsius"
  end
  def to_kelvin
    puts "#{((@value - 32) * 5/9) + 273.15}°" + " " + "Kelvin"
  end
end

class Kelvin < Unit
 
  def to_celsius
    puts "#{@value + (-273.15)}°" + " " + "Celsius"
  end
  def to_farenheit
    puts "#{(@value + (-273.15) * 9/5) + 32}°" + " " + "Farenheit"
  end
end

def con_temp(value, input_scale, output_scale)
  hsh = {celsius: Celsius, farenheit: Farenheit, kelvin: Kelvin}
  foobar = hsh[input_scale.to_sym].new(value)
  foobar.send("to_#{output_scale}")
end

con_temp(45, :kelvin, "farenheit")
con_temp(45, "kelvin", :farenheit)
con_temp(45, "kelvin", "farenheit")
con_temp(45, :kelvin, :farenheit)