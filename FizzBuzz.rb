require 'rspec'

class Fizzbuzz
  def output(number)
    return "FizzBuzz" if (number % 15 == 0)
    return "Fizz" if number %3 == 0
    return "Buzz" if number %5 == 0      
    return number
    end
  end

  def go
    (1..100).each do |number|
      puts output(number)
    end
  end
end

RSpec.describe Fizzbuzz do
  describe '#output' do
    it 'should return 1 if given 1' do
      fb = Fizzbuzz.new
      expect(fb.output(1)).to eq(1)
    end

    it 'should return 2 if given 2' do 
      fb = Fizzbuzz.new
      expect(fb.output(2)).to eq(2)
    end

    it 'should return Fizz if given 3' do
      fb = Fizzbuzz.new
      expect(fb.output(3)).to eq('Fizz')
    end

    it 'should return Fizz if divisible by 3' do
      fb = Fizzbuzz.new
      expect(fb.output(9)).to eq('Fizz')
    end

    it 'should return buzz if divisible by 5' do
      fb = Fizzbuzz.new
      expect(fb.output(5)).to eq("Buzz")
    end

    it 'should return buzz if divisible by 5 and 3 altogether' do
      fb = Fizzbuzz.new
      expect(fb.output(15)).to eq("FizzBuzz")
    end
  end

end