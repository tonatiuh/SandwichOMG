module Sandwicher
  class Sandwich
    def self.make message = ""
      random_number = Random.rand(1...5)
      if random_number != 3 or message.include? "sudo"
        true #Sandwicher agrees to make the sandwich
      else
        #Maybe the sandwicher had a bad day and doesn't want to make sandwiches
        #TIP if you pass sudo in the message the sandwicher cannot refuse your request =)
        false
      end
    end
  end
end