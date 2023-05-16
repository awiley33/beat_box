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

end