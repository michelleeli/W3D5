class PolyTreeNode

    attr_accessor :parent, :children, :value
  
    def initialize(value)
        @parent = nil
        @children = []
        @value = value
    end 

    def parent= (node)
        if node != nil
          @parent = node
          parent.children << self unless parent.children.include?(self)
        end

        return nil
       
        # if self.parent != nil && self.parent != node
        #     self.parent.children.delete(self)   
        #     @parent = node 
        # end

        #     if self.parent != nil && !parent.children.include?(self)
        #         @parent = node
        #         parent.children << self
        #    end 

    end 

    def inspect
        "#PolyTreeNode#{self.object_id}  @parent=#{@parent}   @children = #{@children}"
    end




end