require "discordrb"

module Bot::Commands
  module General
    extend Discordrb::Commands::CommandContainer

    command(
      :invite,
      description: "Link de convite do bot."
    ) do |event, mention|
      event.channel.send_embed do |e|
        e.title = "⭐ Clique aqui para me chamar pro seu servidor"
        e.url =
          "https://discord.com/oauth2/authorize?client_id=741030476780929109&permissions=8&scope=bot"
        e.colour = 0, 0, 0
        e.footer = Discordrb::Webhooks::EmbedFooter.new(text: "Fujiwara Takumi")
        e.timestamp = Time.now
      end
    end
  end
end
