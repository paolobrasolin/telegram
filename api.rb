require 'telegram'

TITANIUM_ABBOT_TOKEN = '469504779:AAEqHfBmWptrSyk4eedhir3TGma6TsaiVTU'

abbot = Telegram::Bot.new token: TITANIUM_ABBOT_TOKEN

# puts abbot.send_message chat_id: '238955633', text: "Funziono."
# abbot.send_chat_action chat_id: '238955633', action: 'find_location'
# abbot.send_location chat_id: '238955633', latitude: 45.0, longitude: 12.0

puts abbot.get_webhook_info
puts abbot.get_me
puts abbot.get_chat chat_id: '238955633'

# User = Struct.new(:id, :is_bot, :first_name, :last_name, :username, :language_code) do
#   def initialize(id:, is_bot:, first_name:, last_name: nil, username: nil, language_code: nil)
#     super(id, is_bot, first_name, last_name, username, language_code)
#   end
# end
