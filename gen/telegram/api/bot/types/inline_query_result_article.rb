# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#inlinequeryresultarticle official documentation}.
        #
        # @!attribute [rw] type
        #   @return [String]
        # @!attribute [rw] id
        #   @return [String]
        # @!attribute [rw] title
        #   @return [String]
        # @!attribute [rw] input_message_content
        #   @return [InputTextMessageContent, InputLocationMessageContent, InputVenueMessageContent, InputContactMessageContent]
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup, nil]
        # @!attribute [rw] url
        #   @return [String, nil]
        # @!attribute [rw] hide_url
        #   @return [Boolean, nil]
        # @!attribute [rw] description
        #   @return [String, nil]
        # @!attribute [rw] thumb_url
        #   @return [String, nil]
        # @!attribute [rw] thumb_width
        #   @return [Integer, nil]
        # @!attribute [rw] thumb_height
        #   @return [Integer, nil]
        InlineQueryResultArticle = Struct.new(
          :type,
          :id,
          :title,
          :input_message_content,
          :reply_markup,
          :url,
          :hide_url,
          :description,
          :thumb_url,
          :thumb_width,
          :thumb_height
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            type:,
            id:,
            title:,
            input_message_content:,
            reply_markup: nil,
            url: nil,
            hide_url: nil,
            description: nil,
            thumb_url: nil,
            thumb_width: nil,
            thumb_height: nil
          )
            super(
              type&.to_s,
              id&.to_s,
              title&.to_s,
              input_message_content,
              (Types::InlineKeyboardMarkup.new(**reply_markup.to_h) unless reply_markup.nil?),
              (url&.to_s unless url.nil?),
              (!!hide_url unless hide_url.nil?),
              (description&.to_s unless description.nil?),
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
