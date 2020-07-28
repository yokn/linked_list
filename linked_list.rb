# frozen_string_literal: true

require_relative 'node'
require 'pry'

class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    newest_node = Node.new(value)

    if @head.nil?
      @head = newest_node
      return
    end

    pointer = @head

    # binding.pry
    pointer = pointer.next_node until pointer.next_node.nil?
    pointer.next_node = newest_node
    @tail = newest_node
  end

  def prepend(value); end

  def size; end

  attr_reader :head, :tail

  def at(index); end

  def pop; end

  def contains?(value); end

  def find(value); end

  def to_s
    print 'nil'
    print ' <- '
    ObjectSpace.each_object(Node) do |node|
      print node.value
      print ' <- '
    end
    # print '<-'
  end
end

my_linked_list = LinkedList.new
my_linked_list.append(5)
my_linked_list.append(3)
my_linked_list.append(7)
my_linked_list.append(4)
p my_linked_list
puts my_linked_list
p "Head is: #{my_linked_list.head.value}"
p "Tail is: #{my_linked_list.tail.value}"
