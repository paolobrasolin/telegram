# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#inlinequeryresultgame official documentation}.
        #
        # @!attribute [rw] type
        #   @return [String]
        # @!attribute [rw] id
        #   @return [String]
        # @!attribute [rw] game_short_name
        #   @return [String]
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup, nil]
        InlineQueryResultGame = Struct.new(
          :type,
          :id,
          :game_short_name,
          :reply_markup
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            type:,
            id:,
            game_short_name:,
            reply_markup: nil
          )
            super(
              type&.to_s,
              id&.to_s,
              game_short_name&.to_s,
              (Types::InlineKeyboardMarkup.new(**reply_markup.to_h) unless reply_markup.nil?)
            )
          end
        end
      end
    end
  end
end
