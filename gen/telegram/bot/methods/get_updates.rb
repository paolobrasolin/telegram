module Telegram
  module Bot
    module Methods
      # Use this method to receive incoming updates using long polling ({http://en.wikipedia.org/wiki/Push_technology#Long_polling wiki}). An Array of Update objects is returned.
      #
      # *Notes**1.* This method will not work if an outgoing webhook is set up.*2.* In order to avoid getting duplicate updates, recalculate _offset_ after each server response.
      #
      # @param offset [Integer] Identifier of the first update to be returned. Must be greater by one than the highest among the identifiers of previously received updates. By default, updates starting with the earliest unconfirmed update are returned. An update is considered confirmed as soon as getUpdates is called with an _offset_ higher than its _update_id_. The negative offset can be specified to retrieve updates starting from _-offset_ update from the end of the updates queue. All previous updates will forgotten.
      # @param limit [Integer] Limits the number of updates to be retrieved. Values between 1—100 are accepted. Defaults to 100.
      # @param timeout [Integer] Timeout in seconds for long polling. Defaults to 0, i.e. usual short polling. Should be positive, short polling should be used for testing purposes only.
      # @param allowed_updates [Array<String>] List the types of updates you want your bot to receive. For example, specify [“message”, “edited_channel_post”, “callback_query”] to only receive updates of these types. See Update for a complete list of available update types. Specify an empty list to receive all updates regardless of type (default). If not specified, the previous setting will be used.<br><br>Please note that this parameter doesn't affect updates created before the call to the getUpdates, so unwanted updates may be received for a short period of time.
      def self.get_updates(
        offset: nil,
        limit: nil,
        timeout: nil,
        allowed_updates: nil
      )
      end
    end
  end
end
