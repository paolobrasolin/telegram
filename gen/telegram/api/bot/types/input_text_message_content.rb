# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#inputtextmessagecontent official documentation}.
        #
        # @!attribute [rw] message_text
        #   @return [String]
        # @!attribute [rw] parse_mode
        #   @return [String, nil]
        # @!attribute [rw] disable_web_page_preview
        #   @return [Boolean, nil]
        InputTextMessageContent = Struct.new(
          :message_text,
          :parse_mode,
          :disable_web_page_preview
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            message_text:,
            parse_mode: nil,
            disable_web_page_preview: nil
          )
            super(
              message_text&.to_s,
              (parse_mode&.to_s unless parse_mode.nil?),
              (!!disable_web_page_preview unless disable_web_page_preview.nil?)
            )
          end
        end
      end
    end
  end
end
