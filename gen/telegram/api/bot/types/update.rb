# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#update official documentation}.
        #
        # @!attribute [rw] update_id
        #   @return [Integer]
        # @!attribute [rw] message
        #   @return [Message, nil]
        # @!attribute [rw] edited_message
        #   @return [Message, nil]
        # @!attribute [rw] channel_post
        #   @return [Message, nil]
        # @!attribute [rw] edited_channel_post
        #   @return [Message, nil]
        # @!attribute [rw] inline_query
        #   @return [InlineQuery, nil]
        # @!attribute [rw] chosen_inline_result
        #   @return [ChosenInlineResult, nil]
        # @!attribute [rw] callback_query
        #   @return [CallbackQuery, nil]
        # @!attribute [rw] shipping_query
        #   @return [ShippingQuery, nil]
        # @!attribute [rw] pre_checkout_query
        #   @return [PreCheckoutQuery, nil]
        Update = Struct.new(
          :update_id,
          :message,
          :edited_message,
          :channel_post,
          :edited_channel_post,
          :inline_query,
          :chosen_inline_result,
          :callback_query,
          :shipping_query,
          :pre_checkout_query
        ) do
          def initialize(
            update_id:,
            message: nil,
            edited_message: nil,
            channel_post: nil,
            edited_channel_post: nil,
            inline_query: nil,
            chosen_inline_result: nil,
            callback_query: nil,
            shipping_query: nil,
            pre_checkout_query: nil
          )
            super(
              update_id&.to_i,
              (Message.new(**message.to_h) unless message.nil?),
              (Message.new(**edited_message.to_h) unless edited_message.nil?),
              (Message.new(**channel_post.to_h) unless channel_post.nil?),
              (Message.new(**edited_channel_post.to_h) unless edited_channel_post.nil?),
              (InlineQuery.new(**inline_query.to_h) unless inline_query.nil?),
              (ChosenInlineResult.new(**chosen_inline_result.to_h) unless chosen_inline_result.nil?),
              (CallbackQuery.new(**callback_query.to_h) unless callback_query.nil?),
              (ShippingQuery.new(**shipping_query.to_h) unless shipping_query.nil?),
              (PreCheckoutQuery.new(**pre_checkout_query.to_h) unless pre_checkout_query.nil?)
            )
          end
        end
      end
    end
  end
end
