# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#answershippingquery official documentation}.
        #
        # @param shipping_query_id [String]
        # @param ok [Boolean]
        # @param shipping_options [Array<ShippingOption>, nil]
        # @param error_message [String, nil]
        def answer_shipping_query(
          shipping_query_id:,
          ok:,
          shipping_options: nil,
          error_message: nil
        )
          Types::Response.new(
            **Client.post(
              url: build_url('answerShippingQuery'),
              parameters: {
                shipping_query_id: shipping_query_id,
                ok: ok,
                shipping_options: shipping_options,
                error_message: error_message
              }
            )
          )
        end
      end
    end
  end
end
