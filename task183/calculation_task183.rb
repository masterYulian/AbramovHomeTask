# frozen_string_literal: true

require '../modules/helper.rb'

class CalculationTask183
  def initialize
    @countOfNumbers = 10
    @deviderNumber = 5
    @resultData = 1
  end

  def getTask183Result
    puts 'Enter count numbers in sequence:'
    data = gets.chomp
    Helper.isNaturalNumber(data)
    @countOfNumbers = data.to_i
    puts 'Enter multiple number:'
    data = gets.chomp
    @deviderNumber = data.to_i
    puts 'Sequence numbers:'
    (1..@countOfNumbers).each do |_number|
      sequenceNumber = rand(100) + 1
      print("#{sequenceNumber} ")
      @resultData *= sequenceNumber if (sequenceNumber % @deviderNumber).zero?
    end
    if @resultData == 1
      puts "\nThere are no numbers divisible by number #{@deviderNumber}"
    else
      puts "\nMultiplication of sequence numbers = #{@resultData}"
    end
  rescue Exception => e
    puts e.message
    puts 'If you want to try input data one more enter \'y\' else enter any other for exit:'
    option = gets.chomp.downcase
    retry if option == 'y'
  end
end


