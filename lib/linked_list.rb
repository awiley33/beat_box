

class LinkedList
    attr_reader :head

    def initialize
        @head = nil
    end

    def append(data)

        if @head.nil?
            @head = Node.new(data)
        else
            current_node = @head
            new_node = Node.new(data)
            until current_node.next_node.nil?
                current_node = current_node.next_node
            end
            current_node.next_node = new_node
        end
        current_node = @head
        while current_node.next_node == nil
            return current_node.data
        end
    end

    def count
        count = 0
        if @head.next_node.nil?
            count = 1
        else
            current_node = @head
            count = 1
            until current_node.next_node.nil?
                current_node = current_node.next_node
                count += 1
            end
        end
        count
    end

    def to_string
        string = ""
    end
end
