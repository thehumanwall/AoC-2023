# frozen_string_literal: true

# Solution entrypoint
class Solution
  NUMBERS = [
    { 'one' => 1 },
    { 'two' => 2 },
    { 'three' => 3 },
    { 'four' => 4 },
    { 'five' => 5 },
    { 'six' => 6 },
    { 'seven' => 7 },
    { 'eight' => 8 },
    { 'nine' => 9 }
  ].freeze

  def self.run(input)
    combined_numbers = numbers_only(input).map { |x| (x[0] + x[-1]).to_i }
    combined_numbers.sum
  end

  def self.numbers_only(input)
    numbers_only = string_to_numbers(input)
    numbers_only.map { |x| x.tr('^0-9', '') }
  end

  def self.string_to_numbers(input)
    input.each_with_index.map do |str, index|
      str1 = str[index, 3]
      str2 = str[index, 4]
      str3 = str[index, 5]
      # binding.pry

      puts NUMBERS.include?(str1)
      puts NUMBERS.include?(str2)
      puts NUMBERS.include?(str3)
    end
  end
end
