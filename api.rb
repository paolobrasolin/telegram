require 'telegram'
require 'colorize'

TITANIUM_ABBOT_TOKEN = '469504779:AAEqHfBmWptrSyk4eedhir3TGma6TsaiVTU'

# abbot = Telegram::Bot.new token: TITANIUM_ABBOT_TOKEN

# abbot.send_chat_action chat_id: '238955633', action: 'find_location'

abbot = Telegram::Bot.new(token: TITANIUM_ABBOT_TOKEN)

puts abbot.get_webhook_info.result.inspect.green
puts abbot.get_me.result.inspect.yellow
puts abbot.get_chat(chat_id: '238955633').result.inspect.red

# abbot.send_message chat_id: '238955633', text: "SPAM"
# abbot.send_location chat_id: '238955633', latitude: 45.0, longitude: 12.0
