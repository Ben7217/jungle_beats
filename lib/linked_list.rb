require_relative "node"
class LinkedList
  attr_reader :head,


  def initialize
    @head = nil
    data
  end

  def append(data) #adds a new piece of data to the list but keep current nodes

    node = Node.new(data)
    @head = node
    current_node = @head
    data
  end

  def prepend(data) #adds node to the start of the list

    node = @head
    @head = Node.new(data)
    @head.next_node = node
    @head.data

  end

  def count
    counter = @head
    @head.data = node
    node = @head.next_node
  end

  def to_string (to_string) #generates a string of all the elements in the list seperated by spaces
    @node = to_string
    to_string = @node
    to_string
  end

end
