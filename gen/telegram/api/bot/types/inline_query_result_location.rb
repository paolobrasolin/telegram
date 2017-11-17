# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#inlinequeryresultlocation official documentation}.
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
        # @!attribute [rw] live_period
        #   @return [Integer, nil]
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
        InlineQueryResultLocation = Struct.new(
          :type,
          :id,
          :latitude,
          :longitude,
          :title,
          :live_period,
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
            latitude:,
            longitude:,
            title:,
            live_period: nil,
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
              (live_period&.to_i unless live_period.nil?),
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
