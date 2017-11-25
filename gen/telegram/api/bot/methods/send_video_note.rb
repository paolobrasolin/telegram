# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#sendvideonote official documentation}.
        #
        # @!attribute [rw] chat_id
        #   @return [Integer, String]
        # @!attribute [rw] video_note
        #   @return [InputFile, String]
        # @!attribute [rw] duration
        #   @return [Integer, nil]
        # @!attribute [rw] length
        #   @return [Integer, nil]
        # @!attribute [rw] disable_notification
        #   @return [Boolean, nil]
        # @!attribute [rw] reply_to_message_id
        #   @return [Integer, nil]
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup, ReplyKeyboardMarkup, ReplyKeyboardRemove, ForceReply, nil]
        SendVideoNote = Struct.new(
          :chat_id,
          :video_note,
          :duration,
          :length,
          :disable_notification,
          :reply_to_message_id,
          :reply_markup
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            chat_id:,
            video_note:,
            duration: nil,
            length: nil,
            disable_notification: nil,
            reply_to_message_id: nil,
            reply_markup: nil
          )
            super(
              chat_id,
              video_note,
              (duration&.to_i unless duration.nil?),
              (length&.to_i unless length.nil?),
              (!!disable_notification unless disable_notification.nil?),
              (reply_to_message_id&.to_i unless reply_to_message_id.nil?),
              (reply_markup unless reply_markup.nil?)
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { Types::Message.new(**r.to_h) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'sendVideoNote'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
