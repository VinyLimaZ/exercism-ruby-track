require_relative 'earth'

module YearBasedOnEarth
  def how_much_years(seconds)
    years(seconds)
  end

  def years(seconds)
    Earth.how_much_years(seconds) / self::YEAR_BASED_ON_EARTH
  end
end
