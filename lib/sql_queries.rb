def selects_all_female_bears_return_name_and_age
      "select name, age from bears where gender = 'F';"
end

def selects_all_bears_names_and_orders_in_alphabetical_order
    "select name from bears order by name asc;"
end

def selects_all_bears_names_and_ages_that_are_alive_and_order_youngest_to_oldest
  "select name, age from bears where alive = 1 order by age asc;"
end

def selects_oldest_bear_and_returns_name_and_age
  "select name, age from bears where name IS NOT NULL and age = (select max(age) from bears);"
end

def select_youngest_bear_and_returns_name_and_age
  "select name, age from bears where age = (select min(age) from bears);"
end

def selects_most_prominent_color_and_returns_with_count
  "select color, count(color) from bears group by color order by count(color) desc limit 1;"
  # having max(count(id));"
end

def counts_number_of_bears_with_goofy_temperaments
  "select count(*) from bears where temperament = 'goofy';"
end

def selects_bear_that_killed_Tim
  "select id, name, age, gender, color, temperament, alive from bears where name is null;"
end
