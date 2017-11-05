# frozen_string_literal: true

require 'pry'
require 'set'

class CalculationTask560
  def getSumDevidesOfNumber(number)
    sum = 0
    for i in 1..number - 1
      sum += i if (number % i).zero?
    end
    sum
  end

  def initialize(startNumber, endNumber)
    @resultData = SortedSet.new
    @startNumber = startNumber
    @endNumber = endNumber
  end

  def getTask560Result
    puts "Start number = #{@startNumber}\nEnd number = #{@endNumber}"
    (@startNumber..@endNumber - 1).each do |i|
      (i + 1..@endNumber).each do |j|
        if getSumDevidesOfNumber(i) == j && getSumDevidesOfNumber(j) == i
          @resultData.add([i, j])
          print "#{i}, #{j}\n"
        end
      end
    end
  end
end
