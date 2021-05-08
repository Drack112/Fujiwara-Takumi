require "discordrb"

module Bot::Commands
  module General
    extend Discordrb::Commands::CommandContainer

    command(:prune, description: "Apagar mensagens do chat") do |event, args|
      return if event.author.bot_account?

      unless event.author.permission? :manage_messages
        return "Você não tem permissão para usar esse comando."
      end
      unless event.bot.profile.on(event.server).permission? :manage_messages
        return "Eu não tenho permissão para esse comando."
      end

      amount = args.to_i.clamp(2, 100)
      event.channel.prune(amount)
      event.respond("#{amount} mensagens apagadas.")
    end
  end
end
