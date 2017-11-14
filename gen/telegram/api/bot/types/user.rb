# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#user official documentation}.
        #
        # @!attribute [rw] id
        #   @return [Integer]
        # @!attribute [rw] is_bot
        #   @return [Boolean]
        # @!attribute [rw] first_name
        #   @return [String]
        # @!attribute [rw] last_name
        #   @return [String, nil]
        # @!attribute [rw] username
        #   @return [String, nil]
        # @!attribute [rw] language_code
        #   @return [String, nil]
        User = Struct.new(
          :id,
          :is_bot,
          :first_name,
          :last_name,
          :username,
          :language_code
        ) do
          def initialize(
            id:,
            is_bot:,
            first_name:,
            last_name: nil,
            username: nil,
            language_code: nil
          )
            super(
              id&.to_i,
              (!!is_bot unless is_bot.nil?),
              first_name&.to_s,
              (last_name&.to_s unless last_name.nil?),
              (username&.to_s unless username.nil?),
              (language_code&.to_s unless language_code.nil?)
            )
          end
        end
      end
    end
  end
end
