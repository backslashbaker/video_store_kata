class Movie
    attr_accessor :title, :total_cost, :rental_points, :days

    def initialize(title, days)
        @title = title
        @days = days
        @total_cost = calculate_rental_cost(days)
    end

    # def calculate_rental_cost(days)
    #     puts "ERROR YOU HAVENT DEFINED FOR THIS CLASS"
    # end

end

class RegularMovie < Movie
    def initialize(title, days)
        super(title, days)
        # @total_cost = calculate_rental_cost(days)
        @rental_points = 1
    end

    def calculate_rental_cost(days)
        price_after_2_days = 1.5
        total = 2
        total += price_after_2_days*(days - 2) if days > 2 
    end
end

class NewReleaseMovie < Movie
    def initialize(title, days)
        super(title, days)
        # @total_cost = calculate_rental_cost(days)
        @rental_points = calculate_rental_points(days)
    end
    def calculate_rental_cost(days)
        3*days
    end

    def calculate_rental_points(days)
        total = 1
        return total if days == 1
        total = 2
    end 

end

class ChildrenMovie < Movie
    def initialize(title, days) 
        super(title, days)
        # @total_cost = calculate_rental_cost(days)
        @rental_points = 1
    end

    def calculate_rental_cost(days)
        price_after_3_days = 1.5
        total = 1.5
        total += price_after_3_days*(days - 3) if days > 3 
    end

end

land_before_time = RegularMovie.new("Land Before Time", 365)
puts land_before_time.title
puts land_before_time.rental_points
puts land_before_time.total_cost

tenent = NewReleaseMovie.new("Tenent", 4)
puts tenent.title
puts tenent.rental_points
puts tenent.total_cost

mulan = ChildrenMovie.new("Mulan (1999)", 5)
puts mulan.title
puts mulan.rental_points
puts mulan.total_cost