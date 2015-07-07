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

  it "does not say woo hoo when she receives a shitty violin" do
    violiniste = Musician.create name: "Violetta Torino"
    violin = Violin.create maker: "McCatGuts"
    violiniste.give_instrument(violin)
    expect(violiniste.speak).to_not eq "woo-hoo"
  end
end
