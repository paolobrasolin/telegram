require 'telegram'
require 'colorize'

TITANIUM_ABBOT_TOKEN = '469504779:AAEqHfBmWptrSyk4eedhir3TGma6TsaiVTU'

# abbot = Telegram::Bot.new token: TITANIUM_ABBOT_TOKEN

# # puts abbot.send_message chat_id: '238955633', text: "Funziono."
# # abbot.send_chat_action chat_id: '238955633', action: 'find_location'
# # abbot.send_location chat_id: '238955633', latitude: 45.0, longitude: 12.0

# # puts abbot.get_webhook_info.inspect.green
# # puts abbot.get_webhook_info.to_h.inspect.yellow
# # puts abbot.get_me.inspect.green
# # puts abbot.get_me.to_h.inspect.yellow
# puts abbot.get_chat(chat_id: '238955633').inspect.green
# puts abbot.get_chat(chat_id: '238955633').to_h.inspect.yellow


# abbot = Telegram::Bot.new token: TITANIUM_ABBOT_TOKEN

# puts abbot.get_chat(chat_id: '238955633').inspect.green
# puts abbot.get_chat(chat_id: '238955633').to_h.inspect.yellow

class Bot
  def initialize(token:, client: Telegram::API::Bot::Client)
    @client = client
    @token = token
  end

  def get_chat(**parameters)
    Telegram::API::Bot::Methods::GetChat.
      new(**parameters).
      call(client: @client, token: @token)
  end

  # ...
end

bot = Bot.new(token: TITANIUM_ABBOT_TOKEN)
result = bot.get_chat(chat_id: '238955633', dude: "wat")
puts result
