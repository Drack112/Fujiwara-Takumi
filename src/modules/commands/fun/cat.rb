require "discordrb"

module Bot::Commands
  module General
    extend Discordrb::Commands::CommandContainer

    command(:cat) do |event|
      whichcat = rand(2)
      begin
        showcat =
          if whichcat.zero?
            JSON.parse(RestClient.get("http://aws.random.cat/meow"))["file"]
          else
            Nokogiri
              .XML(
                open(
                  "http://thecatapi.com/api/images/get?format=xml&results_per_page=1"
                )
              )
              .xpath("//url")
              .text
          end

        begin
          event.channel.send_embed do |e|
            e.title = ["Aww! Gatinhos (=^･ω･^=)", "Meow! (=^･ω･^=)"].sample
            e.url = showcat
            e.image = Discordrb::Webhooks::EmbedImage.new(url: showcat)
            e.footer =
              Discordrb::Webhooks::EmbedFooter.new(text: "Fujiwara Takumi")
          end
        end
      end
    end
  end
end
