# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#inlinequeryresultcachedphoto official documentation}.
        #
        # @!attribute [rw] type
        #   @return [String]
        # @!attribute [rw] id
        #   @return [String]
        # @!attribute [rw] photo_file_id
        #   @return [String]
        # @!attribute [rw] title
        #   @return [String, nil]
        # @!attribute [rw] description
        #   @return [String, nil]
        # @!attribute [rw] caption
        #   @return [String, nil]
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup, nil]
        # @!attribute [rw] input_message_content
        #   @return [InputTextMessageContent, InputLocationMessageContent, InputVenueMessageContent, InputContactMessageContent, nil]
        InlineQueryResultCachedPhoto = Struct.new(
          :type,
          :id,
          :photo_file_id,
          :title,
          :description,
          :caption,
          :reply_markup,
          :input_message_content
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            type:,
            id:,
            photo_file_id:,
            title: nil,
            description: nil,
            caption: nil,
            reply_markup: nil,
            input_message_content: nil
          )
            super(
              type&.to_s,
              id&.to_s,
              photo_file_id&.to_s,
              (title&.to_s unless title.nil?),
              (description&.to_s unless description.nil?),
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
