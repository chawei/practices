class Node
  attr_accessor :next, :data

  def initialize(data)
    @data = data
    @next = nil
  end
end

class Fifo
  attr_accessor :first, :last

  def initialize(data)
    @first = Node.new(data)
    @last  = nil
    @first.next = @last
  end

  def queue(data)
    node = Node.new(data)
    if last.nil
      last = node
    else
      last.next = node
      last      = node
    end
  end

  def dequeue()
    pop_node = first
    first    = first.next
    return pop_node.data
  end
end

fifo = Fifo.new(1)

