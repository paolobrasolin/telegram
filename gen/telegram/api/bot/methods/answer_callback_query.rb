# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#answercallbackquery official documentation}.
        #
        # @!attribute [rw] callback_query_id
        #   @return [String]
        # @!attribute [rw] text
        #   @return [String, nil]
        # @!attribute [rw] show_alert
        #   @return [Boolean, nil]
        # @!attribute [rw] url
        #   @return [String, nil]
        # @!attribute [rw] cache_time
        #   @return [Integer, nil]
        AnswerCallbackQuery = Struct.new(
          :callback_query_id,
          :text,
          :show_alert,
          :url,
          :cache_time
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            callback_query_id:,
            text: nil,
            show_alert: nil,
            url: nil,
            cache_time: nil
          )
            super(
              callback_query_id&.to_s,
              (text&.to_s unless text.nil?),
              (!!show_alert unless show_alert.nil?),
              (url&.to_s unless url.nil?),
              (cache_time&.to_i unless cache_time.nil?)
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { (!!r unless r.nil?) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'answerCallbackQuery'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
