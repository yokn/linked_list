# frozen_string_literal: true

class Node
  attr_accessor :value, :next_node
  def initialize(value, next_node)
    @value = value
    @next_node = next_node
  end

  # def value(value)
  #   @value = value
  # end

  # def next_node(next_node)
  #   @next_node = next_node
  # end
end
