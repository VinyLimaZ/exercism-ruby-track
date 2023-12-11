=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

module ResistorColorDuo
  class << self
    DICT = {
      black:   0,
      brown:   1,
      red:     2,
      orange:  3,
      yellow:  4,
      green:   5,
      blue:    6,
      violet:  7,
      grey:    8,
      white:   9
    }

    def value(colors)
      resistor_value(*to_sym(colors))
    end

    def resistor_value(first_color, second_color)
      "#{DICT[first_color]}#{DICT[second_color]}".to_i
    end

    def to_sym(colors)
      [colors[0].to_sym, colors[1].to_sym]
    end
  end
end
