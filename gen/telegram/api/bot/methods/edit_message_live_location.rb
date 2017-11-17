# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#editmessagelivelocation official documentation}.
        #
        # @param chat_id [Integer, String, nil]
        # @param message_id [Integer, nil]
        # @param inline_message_id [String, nil]
        # @param latitude [Float]
        # @param longitude [Float]
        # @param reply_markup [InlineKeyboardMarkup, nil]
        def edit_message_live_location(
          chat_id: nil,
          message_id: nil,
          inline_message_id: nil,
          latitude:,
          longitude:,
          reply_markup: nil
        )
          Types::Response.new(
            **Client.post(
              url: build_url('editMessageLiveLocation'),
              parameters: {
                chat_id: chat_id,
                message_id: message_id,
                inline_message_id: inline_message_id,
                latitude: latitude,
                longitude: longitude,
                reply_markup: reply_markup
              }
            )
          )
        end
      end
    end
  end
end
