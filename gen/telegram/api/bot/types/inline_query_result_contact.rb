# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#inlinequeryresultcontact official documentation}.
        #
        # @!attribute [rw] type
        #   @return [String]
        # @!attribute [rw] id
        #   @return [String]
        # @!attribute [rw] phone_number
        #   @return [String]
        # @!attribute [rw] first_name
        #   @return [String]
        # @!attribute [rw] last_name
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
        InlineQueryResultContact = Struct.new(
          :type,
          :id,
          :phone_number,
          :first_name,
          :last_name,
          :reply_markup,
          :input_message_content,
          :thumb_url,
          :thumb_width,
          :thumb_height
        ) do
          def initialize(
            type:,
            id:,
            phone_number:,
            first_name:,
            last_name: nil,
            reply_markup: nil,
            input_message_content: nil,
            thumb_url: nil,
            thumb_width: nil,
            thumb_height: nil
          )
            super(
              type&.to_s,
              id&.to_s,
              phone_number&.to_s,
              first_name&.to_s,
              (last_name&.to_s unless last_name.nil?),
              (InlineKeyboardMarkup.new(**reply_markup.to_h) unless reply_markup.nil?),
              (InputMessageContent.new(**input_message_content.to_h) unless input_message_content.nil?),
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
