# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#editmessagecaption official documentation}.
        #
        # @!attribute [rw] chat_id
        #   @return [Integer, String, nil]
        # @!attribute [rw] message_id
        #   @return [Integer, nil]
        # @!attribute [rw] inline_message_id
        #   @return [String, nil]
        # @!attribute [rw] caption
        #   @return [String, nil]
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup, nil]
        EditMessageCaption = Struct.new(
          :chat_id,
          :message_id,
          :inline_message_id,
          :caption,
          :reply_markup
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            chat_id: nil,
            message_id: nil,
            inline_message_id: nil,
            caption: nil,
            reply_markup: nil
          )
            super(
              (chat_id unless chat_id.nil?),
              (message_id&.to_i unless message_id.nil?),
              (inline_message_id&.to_s unless inline_message_id.nil?),
              (caption&.to_s unless caption.nil?),
              (Types::InlineKeyboardMarkup.new(**reply_markup.to_h) unless reply_markup.nil?)
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { r },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'editMessageCaption'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
