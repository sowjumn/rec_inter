class TreeStats

  def get_depth(root)
    if root.nil?
      return 0
    else
      left_depth = get_depth(root.left)
      right_depth = get_depth(root.right)
      if (left_depth > right_depth)
        return left_depth + 1
      else
        return right_depth + 1
      end
    end
  end

end


