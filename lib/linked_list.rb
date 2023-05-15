

class LinkedList
    attr_reader :head
    def initialize(head = nil)
        @head = head
    end

    def append(data)
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

    def count
        if head = nil
            count = 0
        else
            node = @head
            count = 1
            until node.next_node.nil?
                node = node.next_node
                count += 1
            end
        end
        count
    end
end