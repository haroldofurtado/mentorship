def years_to_months(years)
  { years: years,
    months: years * 12 }
end

result = years_to_months(ARGV[0].to_i)

puts "#{result[:years]} anos equivale a #{result[:months]} meses."
