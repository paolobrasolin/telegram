module Telegram
  module Bot
    module Methods
      # Use this method to send answers to an inline query. On success, _True_ is returned.<br>No more than *50* results per query are allowed.
      #
      # @param inline_query_id [String] Unique identifier for the answered query
      # @param results [Array<InlineQueryResult>] A JSON-serialized array of results for the inline query
      # @param cache_time [Integer] The maximum amount of time in seconds that the result of the inline query may be cached on the server. Defaults to 300.
      # @param is_personal [Boolean] Pass _True_, if results may be cached on the server side only for the user that sent the query. By default, results may be returned to any user who sends the same query
      # @param next_offset [String] Pass the offset that a client should send in the next query with the same text to receive more results. Pass an empty string if there are no more results or if you don‘t support pagination. Offset length can’t exceed 64 bytes.
      # @param switch_pm_text [String] If passed, clients will display a button with specified text that switches the user to a private chat with the bot and sends the bot a start message with the parameter _switch_pm_parameter_
      # @param switch_pm_parameter [String] {https://core.telegram.org/bots#deep-linking Deep-linking} parameter for the /start message sent to the bot when user presses the switch button. 1-64 characters, only <code>A-Z</code>, <code>a-z</code>, <code>0-9</code>, <code>_</code> and <code>-</code> are allowed.<br><br>_Example:_ An inline bot that sends YouTube videos can ask the user to connect the bot to their YouTube account to adapt search results accordingly. To do this, it displays a ‘Connect your YouTube account’ button above the results, or even before showing any. The user presses the button, switches to a private chat with the bot and, in doing so, passes a start parameter that instructs the bot to return an oauth link. Once done, the bot can offer a _switch_inline_ button so that the user can easily return to the chat where they wanted to use the bot's inline capabilities.
      def self.answer_inline_query(
        inline_query_id:,
        results:,
        cache_time: nil,
        is_personal: nil,
        next_offset: nil,
        switch_pm_text: nil,
        switch_pm_parameter: nil
      )
      end
    end
  end
end
