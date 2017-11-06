module Telegram
  module API
    module Bot
      module Methods
        # Once the user has confirmed their payment and shipping details, the Bot API sends the final confirmation in the form of an Update with the field _pre_checkout_query_. Use this method to respond to such pre-checkout queries. On success, True is returned. *Note:* The Bot API must receive an answer within 10 seconds after the pre-checkout query was sent.
        #
        # @param pre_checkout_query_id [String] Unique identifier for the query to be answered
        # @param ok [Boolean] Specify _True_ if everything is alright (goods are available, etc.) and the bot is ready to proceed with the order. Use _False_ if there are any problems.
        # @param error_message [String] Required if _ok_ is _False_. Error message in human readable form that explains the reason for failure to proceed with the checkout (e.g. "Sorry, somebody just bought the last of our amazing black T-shirts while you were busy filling out your payment details. Please choose a different color or garment!"). Telegram will display this message to the user.
        def answer_pre_checkout_query(
          pre_checkout_query_id:,
          ok:,
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
