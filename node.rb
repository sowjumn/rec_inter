class Node
  attr_reader :name, :left, :right

  def initialize(name,left=nil,right=nil)
    @name = name
    @left = left
    @right = right
  end
end