# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#inlinequeryresultcachedsticker official documentation}.
        #
        # @!attribute [rw] type
        #   @return [String]
        # @!attribute [rw] id
        #   @return [String]
        # @!attribute [rw] sticker_file_id
        #   @return [String]
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup, nil]
        # @!attribute [rw] input_message_content
        #   @return [InputTextMessageContent, InputLocationMessageContent, InputVenueMessageContent, InputContactMessageContent, nil]
        InlineQueryResultCachedSticker = Struct.new(
          :type,
          :id,
          :sticker_file_id,
          :reply_markup,
          :input_message_content
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            type:,
            id:,
            sticker_file_id:,
            reply_markup: nil,
            input_message_content: nil
          )
            super(
              type&.to_s,
              id&.to_s,
              sticker_file_id&.to_s,
              (Types::InlineKeyboardMarkup.new(**reply_markup.to_h) unless reply_markup.nil?),
              (input_message_content unless input_message_content.nil?)
            )
          end
        end
      end
    end
  end
end
