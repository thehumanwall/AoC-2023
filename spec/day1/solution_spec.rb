# rubocop:disable Metrics/BlockLength
require_relative '../../lib/day1/solution'

describe Solution do
  describe 'sample input' do
    context 'part 1' do
      input = %w[1abc2 pqr3stu8vwx a1b2c3d4e5f treb7uchet]

      it 'returns expected output' do
        output = Solution.run(input)
        expect(output).to eq(142)
      end
    end

    context 'part 2' do
      input = %w[two1nine eightwothree abcone2threexyz xtwone3four 4nineeightseven2 zoneight234
                 7pqrstsixteen]

      fit 'returns expected output' do
        output = Solution.run(input)
        expect(output).to eq(281)
      end
    end
  end

  describe 'real input' do
    file_path = File.join(File.dirname(__FILE__), 'input.txt')
    lines = []

    File.open(file_path, 'r') do |file|
      lines = file.readlines.map(&:chomp) # using chomp to remove the newline character at the end of each line
    end

    context 'part 1' do
      it 'returns expected output' do
        # output = Solution.run(lines)

        expect(output).to eq(52_974)
      end
    end

    context 'part 2' do
      it 'returns expected output' do
        # output = Solution.run(input)
        expect(output).to eq(142)
      end
    end
  end
end
# rubocop:enable Metrics/BlockLength
