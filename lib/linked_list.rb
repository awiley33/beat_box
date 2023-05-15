

class LinkedList
    attr_reader :head, :count
    def initialize
        @head = nil
        @count = 0

    end

    def append(data)
        @count += 1
        node = @head

        if head.nil?
            head = Node.new(data)
        else
            until node.next_node.nil?
                node.next_node = Node.new(data)
            end
        end
        return data
    end
end