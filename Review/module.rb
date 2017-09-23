require 'pry'

module Sweet
  def self.lot
    %w(brownie apple-pie bravarois pudding).sample
  end

  module Chocolate
  end

  module Brownie

  end
end

Sweet.lot

module Greetable
  def greet_to(name)
    puts "Hello, #{name}. My class is #{self.class}."
  end
end

class Alice
  include Greetable

  def greet_to(name)
    super

    puts 'Nice to meet you.'
  end
end

alice = Alice.new
alice.greet_to 'Bob'


class FriendList
  include Enumerable

  def initialize(*friends)
    @friends = friends
  end

  def each
    for v in @friends
      yield v
    end
  end
end

friend_list = FriendList.new('Alice', 'Bob', 'Charile')
p friend_list.count
p friend_list.map(&:upcase)
p friend_list.find{ |v| /b/  === v }
