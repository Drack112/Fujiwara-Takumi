require "discordrb"

module Bot::Commands
  module General
    extend Discordrb::Commands::CommandContainer

    command(
      :help,
      description: "Lista de comandos do do bot."
    ) do |event, mention|
      event
        .user
        .pm
        .send_embed do |e|
          e.title = "🤖 Meus comandos 🤖"
          e.colour = 255, 255, 255

          e.description =
            "Prefixo: `rb!`
                
                **about**  -->  Minhas informações.
                **avatar** --> Gerar o avatar do usuário.
                **cat**    --> Gatinhos!
                **dog**    --> Woof!
                **emoji**  --> Roubar emojis dos servidores.
                **faces**  --> ╲(｡◕‿◕｡)╱
                **github** --> Meu repositório Git.
                **help**   --> O comando que você deu agora.
                **invite** --> Link do meu convite.
                **prune**  --> Deletar mensagens
                **ping**   --> Pong!"

          e.image = { url: "https://i.imgur.com/8lebxQY.png" }
          e.thumbnail = {
            url:
              "https://cdn.discordapp.com/avatars/741030476780929109/d32d83140bff5929772060e2cc1a5453.png?size=4096"
          }
          e.footer =
            Discordrb::Webhooks::EmbedFooter.new(text: "Fujiwara Takumi")
          e.timestamp = Time.now
        end
    end
  end
end
