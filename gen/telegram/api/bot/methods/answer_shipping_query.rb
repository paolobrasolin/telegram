module Telegram
  module API
    module Bot
      module Methods
        # If you sent an invoice requesting a shipping address and the parameter _is_flexible_ was specified, the Bot API will send an Update with a _shipping_query_ field to the bot. Use this method to reply to shipping queries. On success, True is returned.
        #
        # @param shipping_query_id [String] Unique identifier for the query to be answered
        # @param ok [Boolean] Specify True if delivery to the specified address is possible and False if there are any problems (for example, if delivery to the specified address is not possible)
        # @param shipping_options [Array<ShippingOption>] Required if _ok_ is True. A JSON-serialized array of available shipping options.
        # @param error_message [String] Required if _ok_ is False. Error message in human readable form that explains why it is impossible to complete the order (e.g. "Sorry, delivery to your desired address is unavailable'). Telegram will display this message to the user.
        def answer_shipping_query(
          shipping_query_id:,
          ok:,
          shipping_options: nil,
          error_message: nil
        )
          url = build_url method_name: __method__.to_s.delete('_')
          parameters = method_parameters_hash __method__, binding
          Telegram::API::Bot::Client.post url: url, parameters: parameters
        end
      end
    end
  end
end
