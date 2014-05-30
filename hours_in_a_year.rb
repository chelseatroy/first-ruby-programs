
hours_in_a_year = 24.0 * 365.0

minutes_in_a_decade = hours_in_a_year * 10 * 60

seconds_in_a_year = hours_in_a_year * 60.0 * 60.0

seconds_old_i_am = Time.now.to_f - (20.4266410799487 * seconds_in_a_year)

author_age = 1160000000/seconds_in_a_year

puts hours_in_a_year
puts minutes_in_a_decade
puts seconds_old_i_am
puts author_age
