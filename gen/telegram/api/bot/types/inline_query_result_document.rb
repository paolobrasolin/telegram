# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#inlinequeryresultdocument official documentation}.
        #
        # @!attribute [rw] type
        #   @return [String]
        # @!attribute [rw] id
        #   @return [String]
        # @!attribute [rw] title
        #   @return [String]
        # @!attribute [rw] caption
        #   @return [String, nil]
        # @!attribute [rw] document_url
        #   @return [String]
        # @!attribute [rw] mime_type
        #   @return [String]
        # @!attribute [rw] description
        #   @return [String, nil]
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup, nil]
        # @!attribute [rw] input_message_content
        #   @return [InputTextMessageContent, InputLocationMessageContent, InputVenueMessageContent, InputContactMessageContent, nil]
        # @!attribute [rw] thumb_url
        #   @return [String, nil]
        # @!attribute [rw] thumb_width
        #   @return [Integer, nil]
        # @!attribute [rw] thumb_height
        #   @return [Integer, nil]
        InlineQueryResultDocument = Struct.new(
          :type,
          :id,
          :title,
          :caption,
          :document_url,
          :mime_type,
          :description,
          :reply_markup,
          :input_message_content,
          :thumb_url,
          :thumb_width,
          :thumb_height
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            type:,
            id:,
            title:,
            caption: nil,
            document_url:,
            mime_type:,
            description: nil,
            reply_markup: nil,
            input_message_content: nil,
            thumb_url: nil,
            thumb_width: nil,
            thumb_height: nil
          )
            super(
              type&.to_s,
              id&.to_s,
              title&.to_s,
              (caption&.to_s unless caption.nil?),
              document_url&.to_s,
              mime_type&.to_s,
              (description&.to_s unless description.nil?),
              (Types::InlineKeyboardMarkup.new(**reply_markup.to_h) unless reply_markup.nil?),
              (Types::InputMessageContent.new(**input_message_content.to_h) unless input_message_content.nil?),
              (thumb_url&.to_s unless thumb_url.nil?),
              (thumb_width&.to_i unless thumb_width.nil?),
              (thumb_height&.to_i unless thumb_height.nil?)
            )
          end
        end
      end
    end
  end
end
