require "./lib/node"
require "rspec"

describe Node do

    it "exists" do
        node = Node.new("plop")

        expect(node).to be_an_instance_of(Node)
    end

    it "has data" do
        node = Node.new("plop")

        expect(node.data).to eq("plop")
    end

    it "has a node which defaults to nil" do
        node = Node.new("plop")

        expect(node.next_node).to eq(nil)
    end
end