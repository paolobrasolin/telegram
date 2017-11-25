# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#inlinequeryresultvideo official documentation}.
        #
        # @!attribute [rw] type
        #   @return [String]
        # @!attribute [rw] id
        #   @return [String]
        # @!attribute [rw] video_url
        #   @return [String]
        # @!attribute [rw] mime_type
        #   @return [String]
        # @!attribute [rw] thumb_url
        #   @return [String]
        # @!attribute [rw] title
        #   @return [String]
        # @!attribute [rw] caption
        #   @return [String, nil]
        # @!attribute [rw] video_width
        #   @return [Integer, nil]
        # @!attribute [rw] video_height
        #   @return [Integer, nil]
        # @!attribute [rw] video_duration
        #   @return [Integer, nil]
        # @!attribute [rw] description
        #   @return [String, nil]
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup, nil]
        # @!attribute [rw] input_message_content
        #   @return [InputTextMessageContent, InputLocationMessageContent, InputVenueMessageContent, InputContactMessageContent, nil]
        InlineQueryResultVideo = Struct.new(
          :type,
          :id,
          :video_url,
          :mime_type,
          :thumb_url,
          :title,
          :caption,
          :video_width,
          :video_height,
          :video_duration,
          :description,
          :reply_markup,
          :input_message_content
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            type:,
            id:,
            video_url:,
            mime_type:,
            thumb_url:,
            title:,
            caption: nil,
            video_width: nil,
            video_height: nil,
            video_duration: nil,
            description: nil,
            reply_markup: nil,
            input_message_content: nil
          )
            super(
              type&.to_s,
              id&.to_s,
              video_url&.to_s,
              mime_type&.to_s,
              thumb_url&.to_s,
              title&.to_s,
              (caption&.to_s unless caption.nil?),
              (video_width&.to_i unless video_width.nil?),
              (video_height&.to_i unless video_height.nil?),
              (video_duration&.to_i unless video_duration.nil?),
              (description&.to_s unless description.nil?),
              (Types::InlineKeyboardMarkup.new(**reply_markup.to_h) unless reply_markup.nil?),
              (input_message_content unless input_message_content.nil?)
            )
          end
        end
      end
    end
  end
end
