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

    it "can add a node to the beginning of a list" do
        list = LinkedList.new

        expect(list.prepend("dop")).to eq("dop")
    end

    it "can add a node to the beginning of a populated list" do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")

        expect(list.to_string).to eq("dop plop suu")
    end

    it "can add a node to the beginning of an empty list" do
        list = LinkedList.new
        list.prepend("dop")

        expect(list.to_string).to eq("dop")
    end

    it "can insert a node anywhere in the list" do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        list.insert(1, "woo")

        expect(list.to_string).to eq("dop woo plop suu")
    end

    it "can find elements in the list" do
        list = LinkedList.new
        list.append("deep")
        list.append("woo")
        list.append("shi")
        list.append("shu")
        list.append("blop")

        expect(list.find(2, 1)).to eq("shi")
        expect(list.find(1, 3)).to eq("woo shi shu")
    end

    it "can check whether a specific piece of data is in the list" do
        list = LinkedList.new
        list.append("deep")
        list.append("woo")
        list.append("shi")
        list.append("shu")
        list.append("blop")

        expect(list.includes?("deep")).to eq(true)
        expect(list.includes?("dep")).to eq(false)
    end
end
