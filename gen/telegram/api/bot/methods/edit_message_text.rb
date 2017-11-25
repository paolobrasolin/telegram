# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#editmessagetext official documentation}.
        #
        # @!attribute [rw] chat_id
        #   @return [Integer, String, nil]
        # @!attribute [rw] message_id
        #   @return [Integer, nil]
        # @!attribute [rw] inline_message_id
        #   @return [String, nil]
        # @!attribute [rw] text
        #   @return [String]
        # @!attribute [rw] parse_mode
        #   @return [String, nil]
        # @!attribute [rw] disable_web_page_preview
        #   @return [Boolean, nil]
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup, nil]
        EditMessageText = Struct.new(
          :chat_id,
          :message_id,
          :inline_message_id,
          :text,
          :parse_mode,
          :disable_web_page_preview,
          :reply_markup
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            chat_id: nil,
            message_id: nil,
            inline_message_id: nil,
            text:,
            parse_mode: nil,
            disable_web_page_preview: nil,
            reply_markup: nil
          )
            super(
              (chat_id unless chat_id.nil?),
              (message_id&.to_i unless message_id.nil?),
              (inline_message_id&.to_s unless inline_message_id.nil?),
              text&.to_s,
              (parse_mode&.to_s unless parse_mode.nil?),
              (!!disable_web_page_preview unless disable_web_page_preview.nil?),
              (Types::InlineKeyboardMarkup.new(**reply_markup.to_h) unless reply_markup.nil?)
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { r },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'editMessageText'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
