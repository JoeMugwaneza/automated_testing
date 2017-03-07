require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end


  def sqaure(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end

  def average(number_one, number_two)
    return (number_one + number_two)/2
  end
  def percentage(number)
    total = 40
    return (number * 100)/ total
  end

  def tax(amount)
    return (amount * 5) / 100
  end
end

RSpec.describe Calculator do
  describe '#subtract' do
    it 'should return difference of two numbers' do
      calculator = Calculator.new
      expect(calculator.subtract(2,1)).to eq(1)
    end
  end

  describe '#multiply' do
    it 'should return the multiplication of two numbers' do
      calculator = Calculator.new
      expect(calculator.multiply(2, 3)).to eq(6)
    end
  end
  describe '#divide' do
    it 'should return the division of two numbers' do
      calculator = Calculator.new
      expect(calculator.divide(4, 2)).to eq(2)
    end
  end
  describe '#square' do
    it 'should return square of a number' do
      calculator = Calculator.new
      expect(calculator.sqaure(4)).to eq(16)
    end
  end
  describe '#power' do
    it 'should return exponential power of a number' do
      calculator = Calculator.new
      expect(calculator.power(4, 2)).to eq(16)
    end
  end
  describe '#average' do
    it 'should return average of two numbers' do
      calculator = Calculator.new
      expect(calculator.average(10, 20)).to eq(15)
    end
  end
  describe '#percentage' do
    it 'should return percentage of a number' do
      calculator = Calculator.new
      expect(calculator.percentage(20)).to eq(50)
    end
  end
  describe '#tax' do
    it 'should return tax of an amount' do
      calculator = Calculator.new
      expect(calculator.tax(200)).to eq(10)
    end
  end
end
