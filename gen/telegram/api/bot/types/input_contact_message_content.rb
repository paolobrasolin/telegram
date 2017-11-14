# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#inputcontactmessagecontent official documentation}.
        #
        # @!attribute [rw] phone_number
        #   @return [String]
        # @!attribute [rw] first_name
        #   @return [String]
        # @!attribute [rw] last_name
        #   @return [String, nil]
        InputContactMessageContent = Struct.new(
          :phone_number,
          :first_name,
          :last_name
        ) do
          def initialize(
            phone_number:,
            first_name:,
            last_name: nil
          )
            super(
              phone_number&.to_s,
              first_name&.to_s,
              (last_name&.to_s unless last_name.nil?)
            )
          end
        end
      end
    end
  end
end
