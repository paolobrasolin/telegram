# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#inlinekeyboardbutton official documentation}.
        #
        # @!attribute [rw] text
        #   @return [String]
        # @!attribute [rw] url
        #   @return [String, nil]
        # @!attribute [rw] callback_data
        #   @return [String, nil]
        # @!attribute [rw] switch_inline_query
        #   @return [String, nil]
        # @!attribute [rw] switch_inline_query_current_chat
        #   @return [String, nil]
        # @!attribute [rw] callback_game
        #   @return [CallbackGame, nil]
        # @!attribute [rw] pay
        #   @return [Boolean, nil]
        InlineKeyboardButton = Struct.new(
          :text,
          :url,
          :callback_data,
          :switch_inline_query,
          :switch_inline_query_current_chat,
          :callback_game,
          :pay
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            text:,
            url: nil,
            callback_data: nil,
            switch_inline_query: nil,
            switch_inline_query_current_chat: nil,
            callback_game: nil,
            pay: nil
          )
            super(
              text&.to_s,
              (url&.to_s unless url.nil?),
              (callback_data&.to_s unless callback_data.nil?),
              (switch_inline_query&.to_s unless switch_inline_query.nil?),
              (switch_inline_query_current_chat&.to_s unless switch_inline_query_current_chat.nil?),
              (Types::CallbackGame.new(**callback_game.to_h) unless callback_game.nil?),
              (!!pay unless pay.nil?)
            )
          end
        end
      end
    end
  end
end
