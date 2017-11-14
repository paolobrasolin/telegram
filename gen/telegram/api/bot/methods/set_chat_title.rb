# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#setchattitle official documentation}.
        #
        # @param chat_id [Integer, String]
        # @param title [String]
        def set_chat_title(
          chat_id:,
          title:
        )
          Client.post url: build_url('setChatTitle'),
                      parameters: {
                        chat_id: chat_id,
                        title: title
                      }
        end
      end
    end
  end
end
