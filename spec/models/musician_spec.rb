require 'rails_helper'

describe Musician do
  it "says 'woo-hoo' when she receives a Stradivarius" do
    violiniste = Musician.create name: "Violetta Torino"
    violin = Violin.create maker: "Stradivarius"
    violiniste.give_instrument(violin)
    expect(violiniste.speak).to eq "woo-hoo"
  end

  it "does not say woo hoo when she receives a shitty violin" do
    violiniste = Musician.create name: "Violetta Torino"
    violin = Violin.create maker: "McCatGuts"
    violiniste.give_instrument(violin)
    expect(violiniste.speak).to_not eq "woo-hoo"
  end
end
