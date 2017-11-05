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

  def getTask560Result
    puts 'Enter number n:'
    @nNumber = gets.chomp.to_i
    (0..@nNumber - 1).each do |number|
      @resultData << number if (getAllDevidesOfNumber(number) & getAllDevidesOfNumber(@nNumber)).max == 1
    end
    puts "All mutually simple numbers with #{@nNumber} and smaller than it"
    print @resultData.to_s
  end
end
d = CalculationTask323.new
d.getTask560Result
