# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#getchat official documentation}.
        #
        # @param chat_id [Integer, String]
        def get_chat(
          chat_id:
        )
          Client.post url: build_url('getChat'),
                      parameters: {
                        chat_id: chat_id
                      }
        end
      end
    end
  end
end
