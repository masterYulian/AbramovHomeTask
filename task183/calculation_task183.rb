# frozen_string_literal: true

require 'pry'

class CalculationTask183
  def initialize
    @countOfNumbers = 10
    @multipleNumber = 0
    @resultData = 1
  end

  def getTask560Result
    puts 'Enter count numbers in sequence: '
    @countOfNumbers = 10
    puts 'Enter multiple number: '
    @multipleNumber = 5
    (0..@countOfNumbers).each do |_number|
      sequenceNumber = rand(100) + 1
      puts sequenceNumber
      if (sequenceNumber % @multipleNumber).zero?
        result = @resultData.to_i
        p @resultData
        result = result.to_i**sequenceNumber.to_i
        @resultData = result.to_i
      end
    end
    if @resultData == 1
      puts "There are no numbers divisible by number #{@multipleNumber}"
    end
  else
    puts "Products of sequence = #{@resultData}"
  end
end

c = CalculationTask183.new
c.getTask560Result
