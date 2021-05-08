require "discordrb"

module Bot::Commands
  module General
    extend Discordrb::Commands::CommandContainer

    command(:github, description: "Meu Git.") do |event, mention|
      event.channel.send_embed do |e|
        e.title = "💻 Meu GitHub"
        e.url = "https://github.com/Drack112/Fujiwara-Takumi"
        e.colour = 0, 0, 0
        e.description =
          "Clique no título a cima para acessar meu repositório GitHub."
        e.footer =
          Discordrb::Webhooks::EmbedFooter.new(
            text: "Fujiwara Takumi",
            icon_url: "https://joshweir.com/assets/github-icon.jpg"
          )
        e.timestamp = Time.now
      end
    end
  end
end
