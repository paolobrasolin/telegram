module Telegram
  module Bot
    module Methods
      # Use this method to send answers to callback queries sent from {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating inline keyboards}. The answer will be displayed to the user as a notification at the top of the chat screen or as an alert. On success, _True_ is returned.
      #
      # Alternatively, the user can be redirected to the specified Game URL. For this option to work, you must first create a game for your bot via {https://t.me/botfather @Botfather} and accept the terms. Otherwise, you may use links like t.me/your_bot?start=XXXX that open your bot with a parameter.
      #
      # @param callback_query_id [String] Unique identifier for the query to be answered
      # @param text [String] Text of the notification. If not specified, nothing will be shown to the user, 0-200 characters
      # @param show_alert [Boolean] If _true_, an alert will be shown by the client instead of a notification at the top of the chat screen. Defaults to _false_.
      # @param url [String] URL that will be opened by the user's client. If you have created a Game and accepted the conditions via {https://t.me/botfather @Botfather}, specify the URL that opens your game – note that this will only work if the query comes from a _callback_game_ button.<br><br>Otherwise, you may use links like <code>t.me/your_bot?start=XXXX</code> that open your bot with a parameter.
      # @param cache_time [Integer] The maximum amount of time in seconds that the result of the callback query may be cached client-side. Telegram apps will support caching starting in version 3.14. Defaults to 0.
      def self.answer_callback_query(
        callback_query_id:,
        text: nil,
        show_alert: nil,
        url: nil,
        cache_time: nil
      )
      end
    end
  end
end
