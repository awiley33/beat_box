class BeatBox
    attr_reader :list
    
    def initialize
        @list = LinkedList.new
    end

    def append(data)
        if data.nil?
            return "Please specify the beat you want to add."
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

    def play
        beats = list.to_string
        `say -r 200 -v Boing #{beats}`
    end
end