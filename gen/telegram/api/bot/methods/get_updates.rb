# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#getupdates official documentation}.
        #
        # @!attribute [rw] offset
        #   @return [Integer, nil]
        # @!attribute [rw] limit
        #   @return [Integer, nil]
        # @!attribute [rw] timeout
        #   @return [Integer, nil]
        # @!attribute [rw] allowed_updates
        #   @return [Array<String>, nil]
        GetUpdates = Struct.new(
          :offset,
          :limit,
          :timeout,
          :allowed_updates
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            offset: nil,
            limit: nil,
            timeout: nil,
            allowed_updates: nil
          )
            super(
              (offset&.to_i unless offset.nil?),
              (limit&.to_i unless limit.nil?),
              (timeout&.to_i unless timeout.nil?),
              (allowed_updates&.to_a&.map { |o| o&.to_s } unless allowed_updates.nil?)
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { r&.to_a&.map { |o| Types::Update.new(**o.to_h) } },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'getUpdates'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
