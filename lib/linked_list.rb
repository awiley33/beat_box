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
        current_node.data
    end

    def prepend(data)
        @head = Node.new(data, @head)
        @head.data
    end

    def count
        if @head.nil?
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

    def insert(index, data)
        current_node = @head

        (index - 1).times do |n|
            current_node = current_node.next_node
        end

        shifted_node = current_node.next_node
        current_node.next_node = Node.new(data, shifted_node)
        current_node.next_node.data
    end

    def find(index, element_count)
        current_node = @head
        index.times do
            current_node = current_node.next_node
        end
        if element_count == 1
            string = "#{current_node.data}"
        else 
            string = "#{current_node.data}"
                (element_count - 1).times do
                    current_node = current_node.next_node
                    string += " #{current_node.data}"
                end
        end
        string
    end

    def includes?(data)
        current_node = @head
        if current_node == nil
            false
        elsif current_node.data == data
            true
        elsif 
            while current_node = current_node.next_node
                if current_node.data == data
                    true
                end
            end
        else false
        end
    end

    def pop
        current_node = @head
        if current_node.nil?
            "Invalid request! This is an empty list."
        elsif current_node.next_node.nil?
            current_node.data
            current_node = nil
        else
            until current_node.next_node.next_node.nil?
                current_node = current_node.next_node
            end
        last_node = current_node.next_node.data
        current_node.next_node = nil
        end
        last_node
    end

    def to_string
        current_node = @head
        if current_node.nil?
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
