# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#sendinvoice official documentation}.
        #
        # @!attribute [rw] chat_id
        #   @return [Integer]
        # @!attribute [rw] title
        #   @return [String]
        # @!attribute [rw] description
        #   @return [String]
        # @!attribute [rw] payload
        #   @return [String]
        # @!attribute [rw] provider_token
        #   @return [String]
        # @!attribute [rw] start_parameter
        #   @return [String]
        # @!attribute [rw] currency
        #   @return [String]
        # @!attribute [rw] prices
        #   @return [Array<LabeledPrice>]
        # @!attribute [rw] provider_data
        #   @return [String, nil]
        # @!attribute [rw] photo_url
        #   @return [String, nil]
        # @!attribute [rw] photo_size
        #   @return [Integer, nil]
        # @!attribute [rw] photo_width
        #   @return [Integer, nil]
        # @!attribute [rw] photo_height
        #   @return [Integer, nil]
        # @!attribute [rw] need_name
        #   @return [Boolean, nil]
        # @!attribute [rw] need_phone_number
        #   @return [Boolean, nil]
        # @!attribute [rw] need_email
        #   @return [Boolean, nil]
        # @!attribute [rw] need_shipping_address
        #   @return [Boolean, nil]
        # @!attribute [rw] is_flexible
        #   @return [Boolean, nil]
        # @!attribute [rw] disable_notification
        #   @return [Boolean, nil]
        # @!attribute [rw] reply_to_message_id
        #   @return [Integer, nil]
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup, nil]
        SendInvoice = Struct.new(
          :chat_id,
          :title,
          :description,
          :payload,
          :provider_token,
          :start_parameter,
          :currency,
          :prices,
          :provider_data,
          :photo_url,
          :photo_size,
          :photo_width,
          :photo_height,
          :need_name,
          :need_phone_number,
          :need_email,
          :need_shipping_address,
          :is_flexible,
          :disable_notification,
          :reply_to_message_id,
          :reply_markup
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            chat_id:,
            title:,
            description:,
            payload:,
            provider_token:,
            start_parameter:,
            currency:,
            prices:,
            provider_data: nil,
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
            super(
              chat_id&.to_i,
              title&.to_s,
              description&.to_s,
              payload&.to_s,
              provider_token&.to_s,
              start_parameter&.to_s,
              currency&.to_s,
              prices&.to_a&.map { |o| Types::LabeledPrice.new(**o.to_h) },
              (provider_data&.to_s unless provider_data.nil?),
              (photo_url&.to_s unless photo_url.nil?),
              (photo_size&.to_i unless photo_size.nil?),
              (photo_width&.to_i unless photo_width.nil?),
              (photo_height&.to_i unless photo_height.nil?),
              (!!need_name unless need_name.nil?),
              (!!need_phone_number unless need_phone_number.nil?),
              (!!need_email unless need_email.nil?),
              (!!need_shipping_address unless need_shipping_address.nil?),
              (!!is_flexible unless is_flexible.nil?),
              (!!disable_notification unless disable_notification.nil?),
              (reply_to_message_id&.to_i unless reply_to_message_id.nil?),
              (Types::InlineKeyboardMarkup.new(**reply_markup.to_h) unless reply_markup.nil?)
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { Types::Message.new(**r.to_h) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'sendInvoice'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
