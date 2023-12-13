class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  class UnsupportedOperation < StandardError; end

  class << self
    def calculate(first_operand, second_operand, operation)
      validate_operation!(operation)
      validate_operands!(first_operand, second_operand)

      calc(first_operand, second_operand, operation)
    end

    def calc(first, second, oper)
      division_by_zero?(second, oper) and return divided_by_zero_msg

      result = first.send(oper, second)

      "#{first} #{oper} #{second} = #{result}"
    end

    def validate_operands!(first, second)
      [first, second].all?(Integer) or raise ArgumentError
    end

    def validate_operation!(oper)
      valid_operation?(oper) or raise UnsupportedOperation
    end

    def valid_operation?(oper)
      ALLOWED_OPERATIONS.include?(oper)
    end

    def division_by_zero?(second, oper)
      second.zero? && oper == '/'
    end

    def divided_by_zero_msg
      "Division by zero is not allowed."
    end
  end
end
