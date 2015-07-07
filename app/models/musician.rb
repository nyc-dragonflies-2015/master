class Musician < ActiveRecord::Base
  def give_instrument(instrument)
    @instrument = instrument
  end

  def speak
    @instrument.maker == "Stradivarius" ? 'woo-hoo' : 'meh'
  end
end
