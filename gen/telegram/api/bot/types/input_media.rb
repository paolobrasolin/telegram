# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#inputmedia official documentation}.
        #
        InputMedia = Struct.new(nil) do
          include Telegram::CoreExt::Struct

          def initialize
            super
          end
        end
      end
    end
  end
end
