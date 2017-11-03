module Telegram
  module Bot
    module Methods
      # Use this method to send invoices. On success, the sent Message is returned.
      #
      # @param chat_id [Integer] Unique identifier for the target private chat
      # @param title [String] Product name, 1-32 characters
      # @param description [String] Product description, 1-255 characters
      # @param payload [String] Bot-defined invoice payload, 1-128 bytes. This will not be displayed to the user, use for your internal processes.
      # @param provider_token [String] Payments provider token, obtained via {https://t.me/botfather Botfather}
      # @param start_parameter [String] Unique deep-linking parameter that can be used to generate this invoice when used as a start parameter
      # @param currency [String] Three-letter ISO 4217 currency code, see {https://core.telegram.org/bots/payments#supported-currencies more on currencies}
      # @param prices [Array<LabeledPrice>] Price breakdown, a list of components (e.g. product price, tax, discount, delivery cost, delivery tax, bonus, etc.)
      # @param photo_url [String] URL of the product photo for the invoice. Can be a photo of the goods or a marketing image for a service. People like it better when they see what they are paying for.
      # @param photo_size [Integer] Photo size
      # @param photo_width [Integer] Photo width
      # @param photo_height [Integer] Photo height
      # @param need_name [Boolean] Pass _True_, if you require the user's full name to complete the order
      # @param need_phone_number [Boolean] Pass _True_, if you require the user's phone number to complete the order
      # @param need_email [Boolean] Pass _True_, if you require the user's email to complete the order
      # @param need_shipping_address [Boolean] Pass _True_, if you require the user's shipping address to complete the order
      # @param is_flexible [Boolean] Pass _True_, if the final price depends on the shipping method
      # @param disable_notification [Boolean] Sends the message {https://telegram.org/blog/channels-2-0#silent-messages silently}. Users will receive a notification with no sound.
      # @param reply_to_message_id [Integer] If the message is a reply, ID of the original message
      # @param reply_markup [InlineKeyboardMarkup] A JSON-serialized object for an {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating inline keyboard}. If empty, one 'Pay <code>total price</code>' button will be shown. If not empty, the first button must be a Pay button.
      def self.send_invoice(
        chat_id:,
        title:,
        description:,
        payload:,
        provider_token:,
        start_parameter:,
        currency:,
        prices:,
        photo_url: nil,
        photo_size: nil,
        photo_width: nil,
        photo_height: nil,
        need_name: nil,
        need_phone_number: nil,
        need_email: nil,
        need_shipping_address: nil,
        is_flexible: nil,
        disable_notification: nil,
        reply_to_message_id: nil,
        reply_markup: nil
      )
      end
    end
  end
end
