class PolyTreeNode

    attr_accessor :parent, :children, :value
  
    def initialize(value)
        @parent = nil
        @children = []
        @value = value
    end 

    def parent= (node)
        @parent = node
        if !parent.children.include?(self)
             parent.children << self
        end 
    end 

end