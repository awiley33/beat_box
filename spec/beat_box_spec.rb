require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"

describe BeatBox do

    it "exists" do
        bb = BeatBox.new

        expect(bb).to be_an_instance_of(BeatBox)
    end

    it "instantiates a list" do
        bb = BeatBox.new

        expect(bb.list).to be_an_instance_of(LinkedList)
    end

    it "has a head equal to nil" do
        bb = BeatBox.new

        expect(bb.list.head).to eq(nil)
    end

    it "can append multiple nodes at the same time" do
        bb = BeatBox.new

        expect(bb.append("deep doo ditt")).to eq("deep doo ditt")
        expect(bb.list.head.data).to eq("deep")
        expect(bb.list.head.next_node.data).to eq("doo")
        expect(bb.append("woo hoo shu")).to eq("woo hoo shu")
        expect(bb.count).to eq(6)
    end

    it "can play the beat sounds and not raise an error" do
        bb = BeatBox.new
        bb.append("deep doo ditt woo hoo shu")

        expect(bb.count).to eq(6)
        expect(bb.list.count).to eq(6)
        expect { bb.play }.not_to raise_error
    end

end