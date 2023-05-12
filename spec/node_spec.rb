require "./lib/node"
require "rspec"

describe Node do

    it "exists" do
        node = Node.new("plop")
    end

    expect(node).to be_an_instance_of(Node)
end