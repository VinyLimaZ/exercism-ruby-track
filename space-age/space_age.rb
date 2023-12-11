require_relative 'mercury'
require_relative 'venus'
require_relative 'earth'
require_relative 'mars'
require_relative 'saturn'
require_relative 'jupiter'
require_relative 'uranus'
require_relative 'neptune'

class SpaceAge
  PLANETS = %w[
  mercury
  venus
  earth
  mars
  jupiter
  saturn
  uranus
  neptune
  ].freeze

  attr_reader :seconds

  def initialize(seconds)
    @seconds = seconds
  end

  PLANETS.each do |planet|
    define_method("on_#{planet}") do
      Object.const_get(planet.capitalize).how_much_years(seconds)
    end
  end
end
