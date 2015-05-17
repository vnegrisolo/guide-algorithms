# Algorith to evaluate the reverse polish notation
class PolishNotation
  OPERATORS = %w(+ - * /)

  def evaluate(oper_list)
    operands = []
    oper_list.each do |oper|
      r = if operator?(oper)
            evaluate_operation(operands.pop, operands.pop, oper)
          else
            oper
          end
      operands << r.to_i
    end
    operands.first
  end

  private

  def operator?(oper)
    OPERATORS.include?(oper)
  end

  def evaluate_operation(operand_1, operand_2, oper)
    case oper
    when '+' then operand_2 + operand_1
    when '-' then operand_2 - operand_1
    when '*' then operand_2 * operand_1
    when '/' then operand_2 / operand_1
    end
  end
end
