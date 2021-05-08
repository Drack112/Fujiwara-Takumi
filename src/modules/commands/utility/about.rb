require "discordrb"

module Bot::Commands
  module General
    extend Discordrb::Commands::CommandContainer

    command(:about, description: "Informações do bot.") do |event, mention|
      event.channel.send_embed do |e|
        e.title = "Você sabe quem sou eu?"
        e.colour = 255, 255, 255

        e.description =
          "Olá pequeno ser humano, me chame de **Fujiwara Takumi** um bot com funcionalidades simples e...é, só isso mesmo.

                Não tem muito o que falar até porque eu só tenho os comandos basicos como...ah sei la nem eu lembro, da um `rb!help` ae que tu encontra.
                
                Desenvolvido em Ruby e não se esqueça, meu prefixo é rb!. Se quiser mais informações ou até mesmo meu código fonte apenas digite `rb!github.`"

        e.image = { url: "https://i.imgur.com/8lebxQY.png" }
        e.thumbnail = {
          url:
            "https://cdn.discordapp.com/avatars/741030476780929109/d32d83140bff5929772060e2cc1a5453.png?size=4096"
        }
        e.footer = Discordrb::Webhooks::EmbedFooter.new(text: "Fujiwara Takumi")
        e.timestamp = Time.now
      end
    end
  end
end
