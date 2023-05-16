class BeatBox
    attr_reader :list
    def initialize
        @list = LinkedList.new
    end

    def append(data)
        if data.nil?
            return "There is nothing here."
        elsif data.include? " "
            data = data.split(" ")
            index = data.count
            data = data.each do |n|
                list.append(n)
            end
            data = list.find((list.count-index), index)
            return data
        else
            list.append(data)
            data = list.to_string
            return data
        end
    end

    def count
        return list.count
    end

end