module SameAs

  # Returns true if each element in self is equal to corresponding element
  # in the other array, with the comparison method given in the block.
  # Returns false otherwise.
  # With no block, compares the elements using "==."
  def same_as?(other_ary) # :yields:
    is_same_as = true
    
    if other_ary != nil && self.size == other_ary.size
       self.each_with_index do |x, i|
         if block_given?
           is_same_as &&= yield self[i], other_ary[i]
         else
           is_same_as &&= (self[i] == other_ary[i])
         end
       end
    else
      is_same_as = false
    end
    
    return is_same_as
  end
  
  # Returns true if the strings of both elements in self and the other array
  # start with a same string.
  # Returns false if otherwise.
  def same_prefix?(other_ary)
    return self.same_as?(other_ary) {|a, b| a.start_with?(b) || b.start_with?(a)}
  end
end
