class Musician < ActiveRecord::Base
  def give_instrument(instrument)
    @instrument = instrument
  end

  def speak
    @instrument.maker == "Stradivarius" ? 'woo-hoo' : 'meh'
  end

  def play(instrument)
    result = instrument.play
    result == "ba-doink" ?  "Holy Traviata, fucking thing!" : "I am amazing!"
  end
end
