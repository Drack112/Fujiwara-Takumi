require "discordrb"

module Bot::Commands
  module General
    extend Discordrb::Commands::CommandContainer
    command(:ping, description: "Pong🏓! Conferir latencia do bot.") do |event|
      msg = event.respond "Pong🏓!"
      msg.edit "Pong🏓! `#{Time.now - event.timestamp}` ms"
    end
  end
end
