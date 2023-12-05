require "solution"

describe Solution do
  describe "sample input" do
    context "part 1" do
      input = ['1abc2', 'pqr3stu8vwx', 'a1b2c3d4e5f', 'treb7uchet']
      
      it "returns expected output" do
        output = Solution.run(input)

        expect(output).to eq('')
      end
    end

    context "part 2" do
      input = ['1abc2', 'pqr3stu8vwx', 'a1b2c3d4e5f', 'treb7uchet']

      it "returns expected output" do
      end
    end
  end
end