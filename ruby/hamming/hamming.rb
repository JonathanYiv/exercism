class Hamming
  def self.compute(strand_one, strand_two)
    raise ArgumentError if strand_one.length != strand_two.length
    strand_one = strand_one.split('')
    strand_two = strand_two.split('')
    differences = 0
    strand_one.each_index do |nucleotide_index|
      differences += 1 if strand_one[nucleotide_index] != strand_two[nucleotide_index] 
    end
    differences
  end
end

module BookKeeping
  VERSION = 3
end