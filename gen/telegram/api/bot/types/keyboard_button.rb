# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#keyboardbutton official documentation}.
        #
        # @!attribute [rw] text
        #   @return [String]
        # @!attribute [rw] request_contact
        #   @return [Boolean, nil]
        # @!attribute [rw] request_location
        #   @return [Boolean, nil]
        KeyboardButton = Struct.new(
          :text,
          :request_contact,
          :request_location
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            text:,
            request_contact: nil,
            request_location: nil
          )
            super(
              text&.to_s,
              (!!request_contact unless request_contact.nil?),
              (!!request_location unless request_location.nil?)
            )
          end
        end
      end
    end
  end
end
