# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#inlinequeryresultaudio official documentation}.
        #
        # @!attribute [rw] type
        #   @return [String]
        # @!attribute [rw] id
        #   @return [String]
        # @!attribute [rw] audio_url
        #   @return [String]
        # @!attribute [rw] title
        #   @return [String]
        # @!attribute [rw] caption
        #   @return [String, nil]
        # @!attribute [rw] performer
        #   @return [String, nil]
        # @!attribute [rw] audio_duration
        #   @return [Integer, nil]
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup, nil]
        # @!attribute [rw] input_message_content
        #   @return [InputTextMessageContent, InputLocationMessageContent, InputVenueMessageContent, InputContactMessageContent, nil]
        InlineQueryResultAudio = Struct.new(
          :type,
          :id,
          :audio_url,
          :title,
          :caption,
          :performer,
          :audio_duration,
          :reply_markup,
          :input_message_content
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            type:,
            id:,
            audio_url:,
            title:,
            caption: nil,
            performer: nil,
            audio_duration: nil,
            reply_markup: nil,
            input_message_content: nil
          )
            super(
              type&.to_s,
              id&.to_s,
              audio_url&.to_s,
              title&.to_s,
              (caption&.to_s unless caption.nil?),
              (performer&.to_s unless performer.nil?),
              (audio_duration&.to_i unless audio_duration.nil?),
              (Types::InlineKeyboardMarkup.new(**reply_markup.to_h) unless reply_markup.nil?),
              (input_message_content unless input_message_content.nil?)
            )
          end
        end
      end
    end
  end
end
