# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#inlinequeryresultcachedgif official documentation}.
        #
        # @!attribute [rw] type
        #   @return [String]
        # @!attribute [rw] id
        #   @return [String]
        # @!attribute [rw] gif_file_id
        #   @return [String]
        # @!attribute [rw] title
        #   @return [String, nil]
        # @!attribute [rw] caption
        #   @return [String, nil]
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup, nil]
        # @!attribute [rw] input_message_content
        #   @return [InputTextMessageContent, InputLocationMessageContent, InputVenueMessageContent, InputContactMessageContent, nil]
        InlineQueryResultCachedGif = Struct.new(
          :type,
          :id,
          :gif_file_id,
          :title,
          :caption,
          :reply_markup,
          :input_message_content
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            type:,
            id:,
            gif_file_id:,
            title: nil,
            caption: nil,
            reply_markup: nil,
            input_message_content: nil
          )
            super(
              type&.to_s,
              id&.to_s,
              gif_file_id&.to_s,
              (title&.to_s unless title.nil?),
              (caption&.to_s unless caption.nil?),
              (Types::InlineKeyboardMarkup.new(**reply_markup.to_h) unless reply_markup.nil?),
              (Types::InputMessageContent.new(**input_message_content.to_h) unless input_message_content.nil?)
            )
          end
        end
      end
    end
  end
end
