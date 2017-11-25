# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#inlinequeryresultgif official documentation}.
        #
        # @!attribute [rw] type
        #   @return [String]
        # @!attribute [rw] id
        #   @return [String]
        # @!attribute [rw] gif_url
        #   @return [String]
        # @!attribute [rw] gif_width
        #   @return [Integer, nil]
        # @!attribute [rw] gif_height
        #   @return [Integer, nil]
        # @!attribute [rw] gif_duration
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
        InlineQueryResultGif = Struct.new(
          :type,
          :id,
          :gif_url,
          :gif_width,
          :gif_height,
          :gif_duration,
          :thumb_url,
          :title,
          :caption,
          :reply_markup,
          :input_message_content
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            type:,
            id:,
            gif_url:,
            gif_width: nil,
            gif_height: nil,
            gif_duration: nil,
            thumb_url:,
            title: nil,
            caption: nil,
            reply_markup: nil,
            input_message_content: nil
          )
            super(
              type&.to_s,
              id&.to_s,
              gif_url&.to_s,
              (gif_width&.to_i unless gif_width.nil?),
              (gif_height&.to_i unless gif_height.nil?),
              (gif_duration&.to_i unless gif_duration.nil?),
              thumb_url&.to_s,
              (title&.to_s unless title.nil?),
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
