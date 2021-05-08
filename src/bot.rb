require "discordrb"
require "ostruct"
require "json"
require "dotenv"

module Bot
  Dir["src/modules/*.rb"].each { |mod| load mod }
  CONFIG = OpenStruct.new(JSON.parse(File.open("data/config.json").read))
  Dotenv.load("./.env")
  Dotenv.require_keys("TOKEN")

  BOT =
    Discordrb::Commands::CommandBot.new token: ENV["TOKEN"],
                                        prefix: CONFIG.prefix

  def self.load_modules(cls, path)
    new_module = Module.new
    const_set(cls.to_sym, new_module)
    Dir["src/modules/#{path}/*.rb"].each { |file| load file }
    new_module.constants.each { |mod| BOT.include! new_module.const_get(mod) }
  end

  load_modules(:Events, "events")
  load_modules(:Commands, "./*/*")

  BOT.run
end
