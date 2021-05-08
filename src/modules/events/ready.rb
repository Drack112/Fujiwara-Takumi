require "discordrb"

module Bot::Events
  module Ready
    extend Discordrb::EventContainer
    file = File.open("src/modules/events/text.txt")
    file_data = file.read
    puts file_data
  end
end
