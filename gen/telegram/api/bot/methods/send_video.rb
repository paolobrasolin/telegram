# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#sendvideo official documentation}.
        #
        # @!attribute [rw] chat_id
        #   @return [Integer, String]
        # @!attribute [rw] video
        #   @return [InputFile, String]
        # @!attribute [rw] duration
        #   @return [Integer, nil]
        # @!attribute [rw] width
        #   @return [Integer, nil]
        # @!attribute [rw] height
        #   @return [Integer, nil]
        # @!attribute [rw] caption
        #   @return [String, nil]
        # @!attribute [rw] disable_notification
        #   @return [Boolean, nil]
        # @!attribute [rw] reply_to_message_id
        #   @return [Integer, nil]
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup, ReplyKeyboardMarkup, ReplyKeyboardRemove, ForceReply, nil]
        SendVideo = Struct.new(
          :chat_id,
          :video,
          :duration,
          :width,
          :height,
          :caption,
          :disable_notification,
          :reply_to_message_id,
          :reply_markup
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            chat_id:,
            video:,
            duration: nil,
            width: nil,
            height: nil,
            caption: nil,
            disable_notification: nil,
            reply_to_message_id: nil,
            reply_markup: nil
          )
            super(
              chat_id,
              video,
              (duration&.to_i unless duration.nil?),
              (width&.to_i unless width.nil?),
              (height&.to_i unless height.nil?),
              (caption&.to_s unless caption.nil?),
              (!!disable_notification unless disable_notification.nil?),
              (reply_to_message_id&.to_i unless reply_to_message_id.nil?),
              (reply_markup unless reply_markup.nil?)
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { Types::Message.new(**r.to_h) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'sendVideo'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
