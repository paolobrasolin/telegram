# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#inlinequeryresultphoto official documentation}.
        #
        # @!attribute [rw] type
        #   @return [String]
        # @!attribute [rw] id
        #   @return [String]
        # @!attribute [rw] photo_url
        #   @return [String]
        # @!attribute [rw] thumb_url
        #   @return [String]
        # @!attribute [rw] photo_width
        #   @return [Integer, nil]
        # @!attribute [rw] photo_height
        #   @return [Integer, nil]
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
        InlineQueryResultPhoto = Struct.new(
          :type,
          :id,
          :photo_url,
          :thumb_url,
          :photo_width,
          :photo_height,
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
            photo_url:,
            thumb_url:,
            photo_width: nil,
            photo_height: nil,
            title: nil,
            description: nil,
            caption: nil,
            reply_markup: nil,
            input_message_content: nil
          )
            super(
              type&.to_s,
              id&.to_s,
              photo_url&.to_s,
              thumb_url&.to_s,
              (photo_width&.to_i unless photo_width.nil?),
              (photo_height&.to_i unless photo_height.nil?),
              (title&.to_s unless title.nil?),
              (description&.to_s unless description.nil?),
              (caption&.to_s unless caption.nil?),
              (Types::InlineKeyboardMarkup.new(**reply_markup.to_h) unless reply_markup.nil?),
              (input_message_content unless input_message_content.nil?)
            )
          end
        end
      end
    end
  end
end
