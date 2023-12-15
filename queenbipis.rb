require 'discordrb'

file = File.open("token.txt")

token=file.read

bot = Discordrb::Bot.new token: token

bot.message(with_text: 'Ping!') do |event|
  event.respond 'Pong!'
end

bot.run