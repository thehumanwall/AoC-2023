# frozen_string_literal: true

class Solution
  def self.run(input)
    numbers_only = input.map { |x| x.tr('^0-9', '') }
    combined_numbers = numbers_only.map { |x| (x[0] + x[-1]).to_i }
    combined_numbers.sum
  end
end
