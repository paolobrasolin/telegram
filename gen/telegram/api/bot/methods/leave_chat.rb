# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#leavechat official documentation}.
        #
        # @param chat_id [Integer, String]
        def leave_chat(
          chat_id:
        )
          Client.post url: build_url('leaveChat'),
                      parameters: {
                        chat_id: chat_id
                      }
        end
      end
    end
  end
end
