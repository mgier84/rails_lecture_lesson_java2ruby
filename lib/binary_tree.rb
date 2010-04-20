class BinaryTree
  def initialize(number)  
    @left = nil
    @right = nil
    @content = number
  end

  def insert(value)
    if value < @content
      if @left == nil
        @left = BinaryTree.new(value)
      else
        @left.insert(value)
      end
    else
      if @right == nil
        @right = BinaryTree.new(value)
      else
        @right.insert(value)
      end
    end
  end
  
  def traverse()
    @ret = String.new()
    
    if @left != nil
      @ret << @left.traverse()
    end
    
    @ret << @content.to_s
    @ret << " "
    
    if @right != nil
      @ret << @right.traverse()
    end
    
    return @ret.to_s
  end

end
