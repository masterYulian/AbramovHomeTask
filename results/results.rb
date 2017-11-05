# frozen_string_literal: true

require '../task560/calculation_task560'

continue = 'y'
while continue == 'y' || continue == 'Y'
  r = CalculationTask560.new(220, 284)
  r.getTask560Result
  puts 'If you want to continue enter \'y\' or \'Y\' else enter any other:'
  continue = gets.chomp
end

puts 'Bue, bue;)'
