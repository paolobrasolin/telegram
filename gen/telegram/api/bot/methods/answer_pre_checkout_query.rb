# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#answerprecheckoutquery official documentation}.
        #
        # @!attribute [rw] pre_checkout_query_id
        #   @return [String]
        # @!attribute [rw] ok
        #   @return [Boolean]
        # @!attribute [rw] error_message
        #   @return [String, nil]
        AnswerPreCheckoutQuery = Struct.new(
          :pre_checkout_query_id,
          :ok,
          :error_message
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            pre_checkout_query_id:,
            ok:,
            error_message: nil
          )
            super(
              pre_checkout_query_id&.to_s,
              (!!ok unless ok.nil?),
              (error_message&.to_s unless error_message.nil?)
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { (!!r unless r.nil?) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'answerPreCheckoutQuery'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
