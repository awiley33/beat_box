

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
        until current_node.next_node == nil
            current_node = current_node.next_node
        end
        return current_node.data
    end

    def count
        if @head == nil
            count = 0
        elsif @head.next_node.nil?
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
        current_node = @head
        if current_node == nil
            string = ""
        elsif current_node.next_node.nil?
            string = "#{current_node.data}"
        else
            string = "#{@head.data}"
            current_node = current_node.next_node
            loop do
                string += " #{current_node.data}"
                break if current_node.next_node.nil?
                current_node = current_node.next_node
            end
        end
        string
    end
end
