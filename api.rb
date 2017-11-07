require 'telegram'

TITANIUM_ABBOT_TOKEN = '469504779:AAEqHfBmWptrSyk4eedhir3TGma6TsaiVTU'

abbot = Telegram::Bot.new token: TITANIUM_ABBOT_TOKEN

# abbot.send_message chat_id: '238955633', text: "Funziono."
# abbot.send_chat_action chat_id: '238955633', action: 'find_location'
# abbot.send_location chat_id: '238955633', latitude: 45.0, longitude: 12.0

# puts abbot.get_webhook_info

# Should we structure everything like this?
MyType = Struct.new(:req_att, :opt_par) do
  def initialize(req_att:, opt_par: nil)
    super(req_att, opt_par)
  end
end

MyType2 = Struct.new(:req_att, :opt_par) do
  def initialize(req_att:, opt_par: nil)
    super(req_att, opt_par)
  end
end
