# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#getchatmemberscount official documentation}.
        #
        # @param chat_id [Integer, String]
        def get_chat_members_count(
          chat_id:
        )
          Client.post url: build_url('getChatMembersCount'),
                      parameters: {
                        chat_id: chat_id
                      }
        end
      end
    end
  end
end
