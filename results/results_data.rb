# frozen_string_literal: true

require '../task560/calculation_task560'
require '../task323/calculation_task323'
require '../task183/calculation_task183'

class ResultsData
  def initialize;
  end

  def getResults
    continue = 'y'
    while continue == 'y' || continue == 'Y'
      puts '|===========================================|'
      puts '|                 MENU                      |'
      puts '|===========================================|'
      puts '|a). Get multiplication of sequence numbers.|'
      puts '|b). Get mutually simple numbers.           |'
      puts '|c). Get all pairs of friendly numbers.     |'
      puts '|===========================================|'
      puts 'Enter your option:'
      option = gets.chomp.downcase
      case option
        when 'a'
          task183 = CalculationTask183.new
          task183.getTask183Result
        when 'b'
          task323 = CalculationTask323.new
          task323.getTask323Result
        when 'c'
          task560 = CalculationTask560.new
          task560.getTask560Result
        else
          puts 'Incorrect option!'
      end
      puts 'If you want to continue enter \'y\' or \'Y\' else enter any other for exit:'
      continue = gets.chomp
    end
    puts 'Bye, bye;)'
  end
end
