require "./lib/linked_list"
require "./lib/node"
require "rspec"

describe LinkedList do

    it "exists" do
        list = LinkedList.new

        expect(list).to be_an_instance_of(LinkedList)
    end

    it "has a head which defaults to nil" do
        list = LinkedList.new

        expect(list.head).to eq(nil)
    end

    it "can append the list with a node" do
        list = LinkedList.new
        node = Node.new("doop")

        expect(list.append("doop")).to eq("doop")
    end

    it "can append the list with multiple nodes" do
        list = LinkedList.new
        


        expect(list.append("doop")).to eq("doop")
    end

    it "can count a list containing 1 node" do
        list = LinkedList.new
        list.append("doop")

        expect(list.count).to eq(1)
    end

    it "can count a list containing more than one node" do
        list = LinkedList.new
        list.append("doop")
        list.append("deep")

        expect(list.count).to eq(2)
    end

    




end