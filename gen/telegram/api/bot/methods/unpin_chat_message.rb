# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#unpinchatmessage official documentation}.
        #
        # @param chat_id [Integer, String]
        def unpin_chat_message(
          chat_id:
        )
          Client.post url: build_url('unpinChatMessage'),
                      parameters: {
                        chat_id: chat_id
                      }
        end
      end
    end
  end
end
