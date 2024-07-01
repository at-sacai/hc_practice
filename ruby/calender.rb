require 'date'
require 'optparse'

def show_calender(year, month)
  start_date = Date.new(year, month, 1)
  end_date = Date.new(year, month, -1)
  puts "    #{start_date.strftime('%B')} #{year}    "
  puts 'Mo Tu We Th Fr Sa Su'

  if start_date.wday == 0
    print '   ' * 6
  else
    print '   ' * (start_date.wday - 1)
  end

  (start_date..end_date).each do |date|
    print date.day.to_s.rjust(2) + ' '
    puts if date.sunday?
  end
end

opt = OptionParser.new

values = {}

values[:year] = Date.today.year
values[:month] = Date.today.month

opt.on('-m month') { |month| values[:month] = month.to_i }
opt.parse!(ARGV)

if values[:month] < 1 || values[:month] > 12
  puts "#{values[:month]} is neither a month number (1..12) nor a name"
else
  show_calender(values[:year], values[:month])
end
