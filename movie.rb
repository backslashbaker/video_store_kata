class Movie
    attr_accessor :title, :total_cost, :rental_points, :days

    def initialize(title, days)
        @title = title
        @total_cost = calculate_rental_cost(days)
        @rental_points = calculate_rental_points(days)
    end

end

class RegularMovie < Movie
    def initialize(title, days)
        super(title, days)
    end

    def calculate_rental_cost(days)
        price_after_2_days = 1.5
        total = 2
        total += price_after_2_days*(days - 2) if days > 2 
    end

    def calculate_rental_points(days)
        1
    end 
end

class NewReleaseMovie < Movie
    def initialize(title, days)
        super(title, days)
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
    end

    def calculate_rental_cost(days)
        price_after_3_days = 1.5
        total = 1.5
        total += price_after_3_days*(days - 3) if days > 3 
    end

    def calculate_rental_points(days)
        1
    end 

end
