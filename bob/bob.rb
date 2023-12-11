=begin
Write your code for the 'Bob' exercise in this file. Make the tests in
`bob_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/bob` directory.
=end

class Bob
  attr_reader :remark

  def initialize(remark)
    @remark = remark.strip
  end

  def self.hey(remark)
    new(remark).hey
  end

  def hey
    return 'Fine. Be that way!' if mute?
    return 'Calm down, I know what I\'m doing!' if yelling_question?
    return 'Whoa, chill out!' if yelling?
    return 'Sure.' if question?

    'Whatever.'
  end

  private

  def yelling_question?
    question? && yelling?
  end

  def has_letters?
    remark.match?(/[a-zA-Z]/)
  end

  def yelling?
    has_letters? && remark == remark.upcase
  end

  def question?
    remark[-1] == '?'
  end

  def mute?
    remark.empty?
  end
end
