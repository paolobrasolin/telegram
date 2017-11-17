# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#answercallbackquery official documentation}.
        #
        # @param callback_query_id [String]
        # @param text [String, nil]
        # @param show_alert [Boolean, nil]
        # @param url [String, nil]
        # @param cache_time [Integer, nil]
        def answer_callback_query(
          callback_query_id:,
          text: nil,
          show_alert: nil,
          url: nil,
          cache_time: nil
        )
          Types::Response.new(
            **Client.post(
              url: build_url('answerCallbackQuery'),
              parameters: {
                callback_query_id: callback_query_id,
                text: text,
                show_alert: show_alert,
                url: url,
                cache_time: cache_time
              }
            )
          )
        end
      end
    end
  end
end
