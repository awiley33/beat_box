require "./lib/linked_list"
require "./lib/node"
require "rspec"

describe Node do

    it "exists" do
        list = LinkedList.new

        expect(list).to be_an_instance_of(LinkedList)
    end


end