require 'discordrb'

module Bot::Commands
    module General
        extend Discordrb::Commands::CommandContainer
  
        command(:avatar, description: "Gerar o avatar do usuário", max_args: 1) do |event, mention|
            begin

                if !mention.nil?
                    userid = event.bot.parse_mention(mention.to_s).id.to_i
                    user = event.bot.user(userid)
                  else
                    user = event.user
                    userid = event.user.id
                  end
  
            event.channel.send_embed do |e|
                
                e.title = "🖼️"
                e.url = "https://cdn.discordapp.com/avatars/#{user.id}/#{user.avatar_id}.png?size=4096".to_s
                e.image = { url: "https://cdn.discordapp.com/avatars/#{user.id}/#{user.avatar_id}.png?size=4096".to_s }
                e.footer = Discordrb::Webhooks::EmbedFooter.new(text: "#{user.name}")
                e.timestamp = Time.now()
            end
          end
        end
    end
end