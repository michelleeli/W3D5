class PolyTreeNode

    attr_accessor :parent, :children, :value
  
    def initialize(value)
        @parent = nil
        @children = []
        @value = value
    end 

    def parent= (node)
        if self.parent != nil && self.parent != node
            self.parent.children.delete(self)  
        end 
        @parent = node
        if node != nil && !parent.children.include?(self)

            parent.children << self
        else 
            return nil 
        end 
    end 

    def add_child(child_node)
        child_node.parent = self
        self.children << child_node if !self.children.include?(child_node)
    end 

    def remove_child(child_node)
        child_node.parent = nil
        if self.children.include?(child_node)
            self.children.delete(child_node) 
        else
            raise "not a child"
        end 
    end 

    def inspect
        "#PolyTreeNode#{self.object_id}  @parent=#{@parent}   @children = #{@children}"
    end

    def bfs(target)
        queue = []
        queue << self.value
        return self.value if self.value == target

        until queue.empty?
            if queue.shift == target
                return self.value
            else
                queue += self.children
            end 
        end 
        return nil
    end 

end

