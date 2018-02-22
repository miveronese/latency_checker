$:.unshift File.expand_path(File.dirname(__FILE__) + '/..')

class ParamParser
  # It parses parameters from a string input and returns a map
  def parse(input_array)
    settings = Hash.new

    input_array.each_with_index do |x, i |
      if x.start_with?("--")
        y = x[2..-1]
        settings[y] = input_array[i+1]
      end
    end

    settings
  end
end
