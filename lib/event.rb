class Event
  attr_reader :name, :ages

  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age
    total_age = 0
    @ages.each do |age|
      total_age += age
    end
    return total_age / @ages.count.to_f
  end

  def standard_deviation_age
    total_age = 0
    average_age = 0
    variance_age_array = []
    variance_age_difference = []
    variance_age_sum = 0

    @ages.each do |age|
      total_age += age
      average_age = (total_age / @ages.count.to_f)
    end

    @ages.each do |age|
      variance_age_array << age - average_age
    end

    variance_age_array.each do |age|
      variance_age_difference << age ** 2
    end

    variance_age_difference.each do |age|
      variance_age_sum += age
    end

    variance_age = Math.sqrt(variance_age_sum / @ages.count)

    return variance_age.round(2)
  end
end
