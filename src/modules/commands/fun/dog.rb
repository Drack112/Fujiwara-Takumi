require "discordrb"

module Bot::Commands
  module General
    extend Discordrb::Commands::CommandContainer

    command(:dog) do |event|
      showdog =
        JSON.parse(RestClient.get("https://random.dog/woof.json"))["url"]

      begin
        event.channel.send_embed do |e|
          e.title = ["Aww! ฅ^•ﻌ•^ฅ", "Woof! ฅ^•ﻌ•^ฅ"].sample
          e.url = showdog
          e.image = Discordrb::Webhooks::EmbedImage.new(url: showcat)
          e.footer =
            Discordrb::Webhooks::EmbedFooter.new(text: "Fujiwara Takumi")
        end
      end
    end
  end
end
