require 'rails_helper'

describe Musician do
  let(:violiniste) { Musician.create name: "Violetta Torino" }
  let(:old_violin) { double("Violin", maker: "Stradivarius") }
  let(:shitty) { double("Violin", maker: "McCatGuts") }

  context "who is very elite" do
    it "says 'woo-hoo' when she receives a Stradivarius" do
      violiniste.give_instrument(old_violin)
      expect(violiniste.speak).to eq "woo-hoo"
    end
  end

  context "who is a beginner" do
    it "does not say woo hoo when she receives a shitty violin" do
      violiniste = Musician.create name: "Violetta Torino"
      violiniste.give_instrument(shitty)
      expect(violiniste.speak).to_not eq "woo-hoo"
    end
  end

  context "with a violin that breaks it string" do
    it "is very mad" do
      expect(old_violin).to receive(:play).at_least(:once) { "ba-doink" }
      expect(violiniste.play(old_violin)).to eq "Holy Traviata, fucking thing!"
    end

    it "is very happy" do
      expect(old_violin).to receive(:play).at_least(:once) { "she's happy as long as the string is not 'ba-doink'" }
      expect(violiniste.play(old_violin)).to eq "I am amazing!"
    end
  end
end
