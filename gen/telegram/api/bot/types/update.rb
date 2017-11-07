module Telegram
  module API
    module Bot
      module Types
        # This object represents an incoming update.<br>At most *one* of the optional parameters can be present in any given update.
        #
        # @!attribute [rw] update_id
        #   @return [Integer] The update‘s unique identifier. Update identifiers start from a certain positive number and increase sequentially. This ID becomes especially handy if you’re using Webhooks, since it allows you to ignore repeated updates or to restore the correct update sequence, should they get out of order.
        # @!attribute [rw] message
        #   @return [Message] _Optional_. New incoming message of any kind — text, photo, sticker, etc.
        # @!attribute [rw] edited_message
        #   @return [Message] _Optional_. New version of a message that is known to the bot and was edited
        # @!attribute [rw] channel_post
        #   @return [Message] _Optional_. New incoming channel post of any kind — text, photo, sticker, etc.
        # @!attribute [rw] edited_channel_post
        #   @return [Message] _Optional_. New version of a channel post that is known to the bot and was edited
        # @!attribute [rw] inline_query
        #   @return [InlineQuery] _Optional_. New incoming inline query
        # @!attribute [rw] chosen_inline_result
        #   @return [ChosenInlineResult] _Optional_. The result of an inline query that was chosen by a user and sent to their chat partner. Please see our documentation on the {https://core.telegram.org/bots/inline#collecting-feedback feedback collecting} for details on how to enable these updates for your bot.
        # @!attribute [rw] callback_query
        #   @return [CallbackQuery] _Optional_. New incoming callback query
        # @!attribute [rw] shipping_query
        #   @return [ShippingQuery] _Optional_. New incoming shipping query. Only for invoices with flexible price
        # @!attribute [rw] pre_checkout_query
        #   @return [PreCheckoutQuery] _Optional_. New incoming pre-checkout query. Contains full information about checkout
        Update = Struct.new(:update_id, :message, :edited_message, :channel_post, :edited_channel_post, :inline_query, :chosen_inline_result, :callback_query, :shipping_query, :pre_checkout_query) do
          def initialize(update_id:, message:, edited_message:, channel_post:, edited_channel_post:, inline_query:, chosen_inline_result:, callback_query:, shipping_query:, pre_checkout_query:)
            super(update_id, message, edited_message, channel_post, edited_channel_post, inline_query, chosen_inline_result, callback_query, shipping_query, pre_checkout_query)
          end
        end
      end
    end
  end
end
