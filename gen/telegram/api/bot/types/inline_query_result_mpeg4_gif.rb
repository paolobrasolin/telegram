# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#inlinequeryresultmpeg4gif official documentation}.
        #
        # @!attribute [rw] type
        #   @return [String]
        # @!attribute [rw] id
        #   @return [String]
        # @!attribute [rw] mpeg4_url
        #   @return [String]
        # @!attribute [rw] mpeg4_width
        #   @return [Integer, nil]
        # @!attribute [rw] mpeg4_height
        #   @return [Integer, nil]
        # @!attribute [rw] mpeg4_duration
        #   @return [Integer, nil]
        # @!attribute [rw] thumb_url
        #   @return [String]
        # @!attribute [rw] title
        #   @return [String, nil]
        # @!attribute [rw] caption
        #   @return [String, nil]
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup, nil]
        # @!attribute [rw] input_message_content
        #   @return [InputTextMessageContent, InputLocationMessageContent, InputVenueMessageContent, InputContactMessageContent, nil]
        InlineQueryResultMpeg4Gif = Struct.new(
          :type,
          :id,
          :mpeg4_url,
          :mpeg4_width,
          :mpeg4_height,
          :mpeg4_duration,
          :thumb_url,
          :title,
          :caption,
          :reply_markup,
          :input_message_content
        ) do
          def initialize(
            type:,
            id:,
            mpeg4_url:,
            mpeg4_width: nil,
            mpeg4_height: nil,
            mpeg4_duration: nil,
            thumb_url:,
            title: nil,
            caption: nil,
            reply_markup: nil,
            input_message_content: nil
          )
            super(
              type&.to_s,
              id&.to_s,
              mpeg4_url&.to_s,
              (mpeg4_width&.to_i unless mpeg4_width.nil?),
              (mpeg4_height&.to_i unless mpeg4_height.nil?),
              (mpeg4_duration&.to_i unless mpeg4_duration.nil?),
              thumb_url&.to_s,
              (title&.to_s unless title.nil?),
              (caption&.to_s unless caption.nil?),
              (InlineKeyboardMarkup.new(**reply_markup.to_h) unless reply_markup.nil?),
              (InputMessageContent.new(**input_message_content.to_h) unless input_message_content.nil?)
            )
          end
        end
      end
    end
  end
end
