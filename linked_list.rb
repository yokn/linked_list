# frozen_string_literal: true

require_relative 'node'

class LinkedList
  def initialize
    @head = nil
  end

  def append(value, next_node = nil)
    if @head
      @new_head = Node.new(value, next_node)
      p @head.next_node = @new_head
      # p @head = @newhead
    else
      p @head = Node.new(value, next_node)
    end
    # p abc.value(value)
    # p abc.next_node(nil)
  end

  def prepend(value); end

  def size; end

  def head; end

  def tail; end

  def at(index); end

  def pop; end

  def contains?(value); end

  def find(value); end

  def to_s
    ObjectSpace.each_object(Node) do |node|
      print node.value
      print '->'
    end
  end
end

my_linked_list = LinkedList.new
my_linked_list.append(5)
my_linked_list.append(3)
my_linked_list.append(7)
p my_linked_list
puts my_linked_list
