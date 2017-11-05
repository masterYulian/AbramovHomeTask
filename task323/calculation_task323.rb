# frozen_string_literal: true

require '../modules/helper.rb'

class CalculationTask323
  def initialize
    @resultData = []
    @nNumber = 10
  end

  def getAllDevidesOfNumber(number)
    data = []
    (1..number).each do |item|
      data << item if (number % item).zero?
    end
    data
  end

  def getTask323Result
    puts 'Enter number n:'
    number = gets.chomp
    Helper.isNaturalNumber(number)
    @nNumber = number.to_i
    (1..@nNumber - 1).each do |number|
      @resultData << number if (getAllDevidesOfNumber(number) & getAllDevidesOfNumber(@nNumber)).max == 1
    end
    puts "All mutually simple numbers with #{@nNumber} and smaller than it"
    print "#{@resultData.to_s}\n"
  rescue Exception => e
    puts e.message
    puts 'If you want to try input data one more enter \'y\' or \'Y\' else enter any other for exit:'
    option = gets.chomp
    retry if option == 'y' || option == 'Y'
  end
end