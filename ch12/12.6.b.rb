# 12.6a
puts "\n\#\# 12.6b - Birthday Helper \#\#\n\n"

birthdays = {}
File.read('birthdays.txt').each_line do|entry|
  entry = entry.chomp.downcase

  name = entry.match(/([^,]+)/)[0].to_s
  date = entry.match(/\w+\s+\d+,.+/).to_s

  birthdays[name] = date
end