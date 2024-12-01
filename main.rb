require_relative "utils"

def main
  abort "Day is missing" unless day = ARGV.first
  
  require_relative day
  input = get_input day
  
  puts "==================== Day #{day} ===================="
  
  [:part1, :part2].each do |part|
    if respond_to?(part, include_private: true)
      result, time = benchmark { send(part, input) }
      puts "#{format_part part}: #{result} \t\t [#{(time * 1000).round(3)} ms]"
    else
      puts "#{format_part part}: Not implemented \t [0 ms]"
    end
  end
end

main
