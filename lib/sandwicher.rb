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
    
    def self.build_message user_message = ""
      if user_message.include? "sudo"
        return "Hey @generalthings I'm requesting a #{user_message[:type]} sandwich and i believe I added sudo to my message so get to work: #{user_message[:user_message]}"
      else
        return "Hi guys @generalthings can you please make me a #{user_message[:type]} sandwich, I will be forever thankfull: #{user_message[:user_message]}."
      end
    end
  end
end