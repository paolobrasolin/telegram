# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#contact official documentation}.
        #
        # @!attribute [rw] phone_number
        #   @return [String]
        # @!attribute [rw] first_name
        #   @return [String]
        # @!attribute [rw] last_name
        #   @return [String, nil]
        # @!attribute [rw] user_id
        #   @return [Integer, nil]
        Contact = Struct.new(
          :phone_number,
          :first_name,
          :last_name,
          :user_id
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            phone_number:,
            first_name:,
            last_name: nil,
            user_id: nil
          )
            super(
              phone_number&.to_s,
              first_name&.to_s,
              (last_name&.to_s unless last_name.nil?),
              (user_id&.to_i unless user_id.nil?)
            )
          end
        end
      end
    end
  end
end
