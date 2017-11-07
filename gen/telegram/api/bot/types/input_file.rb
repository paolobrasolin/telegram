module Telegram
  module API
    module Bot
      module Types
        # This object represents the contents of a file to be uploaded. Must be posted using multipart/form-data in the usual way that files are uploaded via the browser.
        #
        InputFile = Struct.new() do
          def initialize()
            super()
          end
        end
      end
    end
  end
end
