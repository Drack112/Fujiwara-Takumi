require "discordrb"

module Bot::Commands
  module General
    extend Discordrb::Commands::CommandContainer
    command(:emoji, description: "Roubar emojis do servidor") do |event, emoji|
      return if event.author.bot_account?

      val = ""

      if emoji
        emoji.match /<:[[[:alnum:]]_]+:[[:digit:]]+>/ do |e|
          parts = e.to_s.split ":"
          val =
            "https://cdn.discordapp.com/emojis/#{parts[parts.length - 1].gsub(">", "")}.png"
        end
        val = "Nenhum emoji marcado!" if val == ""
      else
        val = "Nenhum emoji marcado!"
      end
      event.respond val
    end
  end
end
