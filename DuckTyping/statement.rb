require_relative "movie"

class Statement

    def make_statement(movie_list, customer_name)
        puts "Rental record for #{customer_name}"

        rental_points = 0
        total_cost = 0

        movie_list.each do |movie| 
            puts "   #{movie.title} £#{movie.total_cost}"
            rental_points += movie.rental_points
            total_cost += movie.total_cost
        end

        puts "You owe £#{total_cost}"
        puts "You earned #{rental_points} frequent renter points"

    end

end


land_before_time = Movie.new(:regular,"Land Before Time", 365)
tenent = Movie.new(:new_release,"Tenent", 4)
mulan = Movie.new(:children,"Mulan (1999)", 5)

movie_list = [land_before_time, tenent, mulan]

statement = Statement.new
statement.make_statement(movie_list, "Derek")