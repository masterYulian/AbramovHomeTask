class CalculationTask183
  def initialize
    @countOfNumbers = 10
    @deviderNumber = 0
    @resultData = 1
  end

  def getTask560Result
    puts 'Enter count numbers in sequence: '
    @countOfNumbers = gets.chomp.to_i
    puts 'Enter multiple number: '
    @deviderNumber = gets.chomp.to_i
    puts 'Sequence numbers:'
    (1..@countOfNumbers).each do |_number|
      sequenceNumber = rand(100) + 1
      print("#{sequenceNumber} ")
      @resultData *= sequenceNumber if (sequenceNumber % @deviderNumber).zero?
    end
    if @resultData == 1
      puts "\nThere are no numbers divisible by number #{@deviderNumber}"
    else
      puts "\nMultiplication of sequence = #{@resultData}"
    end
  end
end
c = CalculationTask183.new
c.getTask560Result
