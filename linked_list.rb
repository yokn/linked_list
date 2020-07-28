# frozen_string_literal: true

require_relative 'node'
require 'pry'

class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    @newest_node = Node.new(value)

    if @head.nil?
      @head = @newest_node
      return
    end

    @pointer = @head

    # binding.pry
    @pointer = @pointer.next_node until @pointer.next_node.nil?
    @pointer.next_node = @newest_node
    @tail = @newest_node
  end

  def prepend(value)
    @newest_node = Node.new(value)
    @newest_node.next_node = @head
    @head = @newest_node
  end

  def size; end

  attr_reader :head, :tail

  def at(index); end

  def pop
    # pointer = pointer.next_node until pointer.next_node.next_node.nil?
  end

  def contains?(value)
    @pointer = @head
    until @pointer.nil?
      return true if @pointer.value == value

      @pointer = @pointer.next_node
    end
    false
  end

  def find(value); end

  def to_s
    @pointer = @head
    until @pointer.nil?
      print @pointer.value
      print ' -> '
      @pointer = @pointer.next_node
    end
    print 'nil '
  end
end

my_linked_list = LinkedList.new
my_linked_list.append(5)
my_linked_list.append(3)
my_linked_list.append(7)
my_linked_list.prepend(9)
my_linked_list.append(4)
my_linked_list.prepend(1)

p my_linked_list.contains?(5)
p my_linked_list.contains?(111)

p my_linked_list
puts my_linked_list
p "Head is: #{my_linked_list.head.value} at #{my_linked_list.head}"
p "Tail is: #{my_linked_list.tail.value} at #{my_linked_list.tail}"
