class Symmetry
att-accessor :val, :left :right
  # Create initial values for val, left and right 
  def initialize (val=0, left=nil, right=nil)
    @val = val
    @left = left
    @right = right
  end
  def is_symmerty(root)
    return true if root.nil?
  end
  def is_mirror(left, right)
    return true if left.nil && right.nil?
    return false if left.nil || right.nil || left.val != right.val
    left.val == right.val && is_mirror(left.left, right.right) && is_mirror(left.right, right.left)
  end
end
    
