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

    it "can add a node to the end of the list" do
        list = LinkedList.new

        expect(list.append("doop")).to eq("doop")
    end

    it "can append the list with multiple nodes" do
        list = LinkedList.new
        list.append("doop")


        expect(list.append("deep")).to eq("deep")
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

    it "can count a list containing 0 nodes" do
        list = LinkedList.new

        expect(list.count).to eq(0)
    end

    it "can convert the list's data to a string" do
        list = LinkedList.new
        list.append("doop")

        expect(list.to_string).to eq("doop")
    end

    it "can convert a list with one node to a string" do
        list = LinkedList.new
        list.append("doop")

        expect(list.to_string).to eq("doop")
    end

    it "can convert a list with two nodes to a string" do
        list = LinkedList.new
        list.append("doop")
        list.append("deep")

        expect(list.to_string).to eq("doop deep")
    end

    it "can convert an empty list to a string" do
        list = LinkedList.new

        expect(list.to_string).to eq("")
    end

    it "can convert a list with many nodes to a string" do
        list = LinkedList.new
        list.append("doop")
        list.append("deep")
        list.append("dee")
        list.append("bum")
        list.append("bam")
        list.append("beep")
        list.append("boop")

        expect(list.to_string).to eq("doop deep dee bum bam beep boop")
    end




end