require 'discordrb'

module Bot::Events
 module Ready
  extend Discordrb::EventContainer
  puts"O bot está pronto!"
 end
end