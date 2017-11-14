# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#setchatdescription official documentation}.
        #
        # @param chat_id [Integer, String]
        # @param description [String, nil]
        def set_chat_description(
          chat_id:,
          description: nil
        )
          Client.post url: build_url('setChatDescription'),
                      parameters: {
                        chat_id: chat_id,
                        description: description
                      }
        end
      end
    end
  end
end
