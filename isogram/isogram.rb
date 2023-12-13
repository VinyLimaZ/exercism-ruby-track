=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end

class Isogram
  def self.isogram(phrase)
    isogram?(phrase)
  end

  def self.isogram?(phrase)
    only_letters = normalize(phrase)
    only_letters.size == only_letters.uniq.size
  end

  def self.normalize(phrase)
    phrase.downcase.scan(/\w/)
  end
end
