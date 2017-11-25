# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#sendvenue official documentation}.
        #
        # @!attribute [rw] chat_id
        #   @return [Integer, String]
        # @!attribute [rw] latitude
        #   @return [Float]
        # @!attribute [rw] longitude
        #   @return [Float]
        # @!attribute [rw] title
        #   @return [String]
        # @!attribute [rw] address
        #   @return [String]
        # @!attribute [rw] foursquare_id
        #   @return [String, nil]
        # @!attribute [rw] disable_notification
        #   @return [Boolean, nil]
        # @!attribute [rw] reply_to_message_id
        #   @return [Integer, nil]
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup, ReplyKeyboardMarkup, ReplyKeyboardRemove, ForceReply, nil]
        SendVenue = Struct.new(
          :chat_id,
          :latitude,
          :longitude,
          :title,
          :address,
          :foursquare_id,
          :disable_notification,
          :reply_to_message_id,
          :reply_markup
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            chat_id:,
            latitude:,
            longitude:,
            title:,
            address:,
            foursquare_id: nil,
            disable_notification: nil,
            reply_to_message_id: nil,
            reply_markup: nil
          )
            super(
              chat_id,
              latitude&.to_f,
              longitude&.to_f,
              title&.to_s,
              address&.to_s,
              (foursquare_id&.to_s unless foursquare_id.nil?),
              (!!disable_notification unless disable_notification.nil?),
              (reply_to_message_id&.to_i unless reply_to_message_id.nil?),
              (reply_markup unless reply_markup.nil?)
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { Types::Message.new(**r.to_h) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'sendVenue'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
