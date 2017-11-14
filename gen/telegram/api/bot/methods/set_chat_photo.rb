# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#setchatphoto official documentation}.
        #
        # @param chat_id [Integer, String]
        # @param photo [InputFile]
        def set_chat_photo(
          chat_id:,
          photo:
        )
          Client.post url: build_url('setChatPhoto'),
                      parameters: {
                        chat_id: chat_id,
                        photo: photo
                      }
        end
      end
    end
  end
end
