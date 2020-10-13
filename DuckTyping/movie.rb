class Movie 
attr_accessor :title, :total_cost, :rental_points

    def initialize(movie_type, title, days)
        @title = title
        @movie = MovieFactory.create(movie_type)
        @total_cost = @movie.calculate_rental_cost(days)
        @rental_points = @movie.calculate_rental_points(days)
    end
end
class MovieFactory
    def self.create(type)
        case type
        when :regular
            RegularMovie.new
            
        when :children
            ChildrenMovie.new

        when :new_release
            NewReleaseMovie.new
        end
    end
end 

class RegularMovie
    def calculate_rental_cost(days)
        price_after_2_days = 1.5
        total = 2
        total += price_after_2_days*(days - 2) if days > 2 
    end

    def calculate_rental_points(days)
        1
    end 
end

class NewReleaseMovie
    def calculate_rental_cost(days)
        3*days
    end

    def calculate_rental_points(days)
        total = 1
        return total if days == 1
        total = 2
    end 

end

class ChildrenMovie
    def calculate_rental_cost(days)
        price_after_3_days = 1.5
        total = 1.5
        total += price_after_3_days*(days - 3) if days > 3 
    end

    def calculate_rental_points(days)
        1
    end 

end

land_before_time = Movie.new(:regular, "Land before time", 365)

puts land_before_time.title
puts land_before_time.total_cost
puts land_before_time.rental_points


