class Violin < ActiveRecord::Base
   # No!  But this models network lag, etcl
   def self.create(*args)
     sleep 7
     super
   end

   def play
     rand(2) == 1 ?  "sweet notes" : "ba-doink"
   end
end
