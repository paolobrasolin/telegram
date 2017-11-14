# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#inlinequeryresultvenue official documentation}.
        #
        # @!attribute [rw] type
        #   @return [String]
        # @!attribute [rw] id
        #   @return [String]
        # @!attribute [rw] latitude
        #   @return [Float]
        # @!attribute [rw] longitude
        #   @return [Float]
        # @!attribute [rw] title
        #   @return [String]
        # @!attribute [rw] address
        #   @return [String]
        # @!attribute [rw] foursquare_id
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
        InlineQueryResultVenue = Struct.new(
          :type,
          :id,
          :latitude,
          :longitude,
          :title,
          :address,
          :foursquare_id,
          :reply_markup,
          :input_message_content,
          :thumb_url,
          :thumb_width,
          :thumb_height
        ) do
          def initialize(
            type:,
            id:,
            latitude:,
            longitude:,
            title:,
            address:,
            foursquare_id: nil,
            reply_markup: nil,
            input_message_content: nil,
            thumb_url: nil,
            thumb_width: nil,
            thumb_height: nil
          )
            super(
              type&.to_s,
              id&.to_s,
              latitude&.to_f,
              longitude&.to_f,
              title&.to_s,
              address&.to_s,
              (foursquare_id&.to_s unless foursquare_id.nil?),
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
