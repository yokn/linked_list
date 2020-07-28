# frozen_string_literal: true

# TODO: Find and fix special cases for all methods such as certain things not existing or changing head/tail

require_relative 'linked_list'

my_linked_list = LinkedList.new

my_linked_list.append(5)
my_linked_list.append(3)
my_linked_list.append(7)
my_linked_list.prepend(9)
my_linked_list.append(4)
my_linked_list.prepend(1)

my_linked_list.pop

my_linked_list.insert_at(8, 2)
my_linked_list.remove_at(1)

puts "Size is: #{my_linked_list.size} nodes"

puts "At index 4 there is: #{my_linked_list.at(4)}"
puts "At index 99 there is: #{my_linked_list.at(99)}"

p my_linked_list.contains?(5)
p my_linked_list.contains?(111)
p my_linked_list.find(5)
p my_linked_list.find(111)

p my_linked_list
puts my_linked_list
p "Head is: #{my_linked_list.head.value} at #{my_linked_list.head}"
p "Tail is: #{my_linked_list.tail.value} at #{my_linked_list.tail}"
