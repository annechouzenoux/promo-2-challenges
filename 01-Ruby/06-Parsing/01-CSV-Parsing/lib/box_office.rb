# Encoding: utf-8
require 'csv'

def most_successfull(number, max_year, file_name)
  #TODO: return the number most successfull movies max_year

films = []

  CSV.foreach(file_name, encoding: "UTF-8") do |row|
    if row[1].to_i < max_year
     films << { name: row[0], year: row[1].to_i, earnings: row[2].to_i }
    end

  end

  sorted_films = films.sort_by { |hash| hash[:earnings] }.reverse
  sorted_films.take(number)

end


 most_successfull(10, 1980, 'lib/movies.csv')
