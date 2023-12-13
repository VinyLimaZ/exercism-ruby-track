=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

class Acronym
  def self.abbreviate(phrase)
    phrase_splitted = split(phrase)
    acronym(phrase_splitted)
  end

  def self.split(phrase)
    phrase.split('-').flat_map(&:split)
  end

  def self.acronym(phrase)
    phrase.map do |word|
      word[0].upcase
    end.join
  end
end
