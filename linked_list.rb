# frozen_string_literal: true

require_relative 'node'

class LinkedList
  def initialize
    @head = nil
  end

  def append(value, next_node = nil)
    if @head

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

  def to_s; end
end

my_linked_list = LinkedList.new
my_linked_list.append(5)
my_linked_list.append(3)
