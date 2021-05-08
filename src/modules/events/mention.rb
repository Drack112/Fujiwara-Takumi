require "discordrb"

module Bot::Events
  module Mention
    extend Discordrb::EventContainer
    mention do |event|
      event.respond "Meu prefixo é `rb!`, porque não tente digitar `rb!help`?"
    end
  end
end
