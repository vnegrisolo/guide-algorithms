# Algorith to add two linked list in reverse order
class LinkedNumbers
  def add(list_1, list_2)
    add_nodes(list_1, list_2)
  end

  private

  def add_nodes(node_1, node_2, result = nil, rest = 0)
    return result unless node_1 || node_2

    v1 = node_value(node_1)
    v2 = node_value(node_2)

    sum = v1 + v2 + rest
    result = add_result(result, sum % 10)

    rest = (sum / 10).to_i
    add_nodes(next_node(node_1), next_node(node_2), result, rest)
  end

  def node_value(node)
    node ? node.value : 0
  end

  def next_node(node)
    node.next_node if node
  end

  def add_result(result, sum)
    return LinkedList.new(sum) unless result

    result.add_node(sum)
    result
  end
end

# Linked List class
class LinkedList
  attr_accessor :value, :next_node

  def self.from_array(values)
    result = nil
    values.each do |v|
      if result
        result.add_node v
      else
        result = LinkedList.new(v)
      end
    end
    result
  end

  def initialize(value)
    @value = value
  end

  def add_node(value)
    node = self
    node = node.next_node until node.next_node.nil?

    node.next_node = LinkedList.new(value)
  end

  def to_s
    "value=#{value}, #{next_node}"
  end

  def ==(other)
    to_s == other.to_s
  end
end
