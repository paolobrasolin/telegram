# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#answerprecheckoutquery official documentation}.
        #
        # @param pre_checkout_query_id [String]
        # @param ok [Boolean]
        # @param error_message [String, nil]
        def answer_pre_checkout_query(
          pre_checkout_query_id:,
          ok:,
          error_message: nil
        )
          Types::Response.new(
            **Client.post(
              url: build_url('answerPreCheckoutQuery'),
              parameters: {
                pre_checkout_query_id: pre_checkout_query_id,
                ok: ok,
                error_message: error_message
              }
            )
          )
        end
      end
    end
  end
end
