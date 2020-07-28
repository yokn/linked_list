# frozen_string_literal: true

require_relative 'node'

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
    @pointer = @pointer.next_node until @pointer.next_node.nil?
    @pointer.next_node = @newest_node
    @tail = @newest_node
  end

  def prepend(value)
    @newest_node = Node.new(value)
    @newest_node.next_node = @head
    @head = @newest_node
  end

  def size
    @size = 0
    @pointer = @head
    until @pointer.nil?
      @size += 1
      @pointer = @pointer.next_node

    end
    @size
  end

  attr_reader :head, :tail

  def at(index)
    @index = -1
    @pointer = @head
    until @pointer.nil?
      @index += 1
      return @pointer.value if @index == index

      @pointer = @pointer.next_node

    end
    'NOT FOUND'
  end

  def pop
    @pointer = @head
    @pointer = @pointer.next_node until @pointer.next_node.next_node.nil?
    @pointer.next_node = nil
    @tail = @pointer
  end

  def contains?(value)
    @pointer = @head
    until @pointer.nil?
      return true if @pointer.value == value

      @pointer = @pointer.next_node
    end
    false
  end

  def find(value)
    @index = -1
    @pointer = @head
    until @pointer.nil?
      @index += 1
      return @index if @pointer.value == value

      @pointer = @pointer.next_node
    end
    false
  end

  def to_s
    @pointer = @head
    until @pointer.nil?
      print @pointer.value
      print ' -> '
      @pointer = @pointer.next_node
    end
    print 'nil '
  end

  def insert_at(value, index)
    @index = -1
    @pointer = @head
    until @pointer.nil?
      @index += 1
      if @index == index
        @newest_node = Node.new(value)
        @newest_node.next_node = @pointer.next_node
        @pointer.next_node = @newest_node
      end
      @pointer = @pointer.next_node
    end
  end

  def remove_at(index)
    @index = -1
    @pointer = @head
    until @pointer.nil?
      @index += 1
      @pointer.next_node = @pointer.next_node.next_node if @index == index - 1
      @pointer = @pointer.next_node
    end
  end
end
