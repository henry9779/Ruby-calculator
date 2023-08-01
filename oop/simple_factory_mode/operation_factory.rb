class OperationFactory
  require_relative 'operation'
  require_relative 'addition'
  require_relative 'subtraction'
  require_relative 'multiplication'
  require_relative 'division'

  def self.create_operation(operator)
    case operator
    when '+'
      Addition.new
    when '-'
      Subtraction.new
    when '*'
      Multiplication.new
    when '/'
      Division.new
    else
      raise "Invalid operator: #{operator}"
    end
  end
end
