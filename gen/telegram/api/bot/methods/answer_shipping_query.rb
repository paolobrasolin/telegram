# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#answershippingquery official documentation}.
        #
        # @!attribute [rw] shipping_query_id
        #   @return [String]
        # @!attribute [rw] ok
        #   @return [Boolean]
        # @!attribute [rw] shipping_options
        #   @return [Array<ShippingOption>, nil]
        # @!attribute [rw] error_message
        #   @return [String, nil]
        AnswerShippingQuery = Struct.new(
          :shipping_query_id,
          :ok,
          :shipping_options,
          :error_message
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            shipping_query_id:,
            ok:,
            shipping_options: nil,
            error_message: nil
          )
            super(
              shipping_query_id&.to_s,
              (!!ok unless ok.nil?),
              (shipping_options&.to_a&.map { |o| Types::ShippingOption.new(**o.to_h) } unless shipping_options.nil?),
              (error_message&.to_s unless error_message.nil?)
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { (!!r unless r.nil?) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'answerShippingQuery'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
