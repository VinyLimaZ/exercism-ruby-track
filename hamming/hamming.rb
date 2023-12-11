class Hamming
  class << self
    def compute(strand_one, strand_two)
      raise ArgumentError if strand_one.size != strand_two.size
      return 0 if strand_one.eql?(strand_two)

      dna = combine_strands(strand_one, strand_two)

      variation_count(dna)
    end

    def combine_strands(strand_one, strand_two)
      strand_one.chars.zip(strand_two.chars)
    end

    def variation_count(dna)
      dna.count do |nucl_one, nucl_two|
        nucl_one != nucl_two
      end
    end
  end
end
