# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#sendinvoice official documentation}.
        #
        # @param chat_id [Integer]
        # @param title [String]
        # @param description [String]
        # @param payload [String]
        # @param provider_token [String]
        # @param start_parameter [String]
        # @param currency [String]
        # @param prices [Array<LabeledPrice>]
        # @param photo_url [String, nil]
        # @param photo_size [Integer, nil]
        # @param photo_width [Integer, nil]
        # @param photo_height [Integer, nil]
        # @param need_name [Boolean, nil]
        # @param need_phone_number [Boolean, nil]
        # @param need_email [Boolean, nil]
        # @param need_shipping_address [Boolean, nil]
        # @param is_flexible [Boolean, nil]
        # @param disable_notification [Boolean, nil]
        # @param reply_to_message_id [Integer, nil]
        # @param reply_markup [InlineKeyboardMarkup, nil]
        def send_invoice(
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
          Types::Response.new(
            result_caster: ->(r) { Types::Message.new(**r.to_h) },
            **Client.post(
              url: build_url('sendInvoice'),
              parameters: {
                chat_id: chat_id,
                title: title,
                description: description,
                payload: payload,
                provider_token: provider_token,
                start_parameter: start_parameter,
                currency: currency,
                prices: prices,
                photo_url: photo_url,
                photo_size: photo_size,
                photo_width: photo_width,
                photo_height: photo_height,
                need_name: need_name,
                need_phone_number: need_phone_number,
                need_email: need_email,
                need_shipping_address: need_shipping_address,
                is_flexible: is_flexible,
                disable_notification: disable_notification,
                reply_to_message_id: reply_to_message_id,
                reply_markup: reply_markup
              }
            )
          )
        end
      end
    end
  end
end
