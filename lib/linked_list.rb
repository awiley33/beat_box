

class LinkedList
    attr_reader :head, :count

    def initialize
        @head = nil
    end

    def append(data)

        if @head.nil?
            @head = Node.new(data)
            count = 1
        else
            current_node = @head
            new_node = Node.new(data)
            until current_node.next_node.nil?
                current_node = current_node.next
            end
            current_node.next_node = new_node
            count += 1
        end
    end

    def count
        count
    end
end
