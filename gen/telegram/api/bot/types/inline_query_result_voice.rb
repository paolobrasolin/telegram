# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#inlinequeryresultvoice official documentation}.
        #
        # @!attribute [rw] type
        #   @return [String]
        # @!attribute [rw] id
        #   @return [String]
        # @!attribute [rw] voice_url
        #   @return [String]
        # @!attribute [rw] title
        #   @return [String]
        # @!attribute [rw] caption
        #   @return [String, nil]
        # @!attribute [rw] voice_duration
        #   @return [Integer, nil]
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup, nil]
        # @!attribute [rw] input_message_content
        #   @return [InputTextMessageContent, InputLocationMessageContent, InputVenueMessageContent, InputContactMessageContent, nil]
        InlineQueryResultVoice = Struct.new(
          :type,
          :id,
          :voice_url,
          :title,
          :caption,
          :voice_duration,
          :reply_markup,
          :input_message_content
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            type:,
            id:,
            voice_url:,
            title:,
            caption: nil,
            voice_duration: nil,
            reply_markup: nil,
            input_message_content: nil
          )
            super(
              type&.to_s,
              id&.to_s,
              voice_url&.to_s,
              title&.to_s,
              (caption&.to_s unless caption.nil?),
              (voice_duration&.to_i unless voice_duration.nil?),
              (Types::InlineKeyboardMarkup.new(**reply_markup.to_h) unless reply_markup.nil?),
              (input_message_content unless input_message_content.nil?)
            )
          end
        end
      end
    end
  end
end
