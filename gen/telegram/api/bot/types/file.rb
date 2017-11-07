module Telegram
  module API
    module Bot
      module Types
        # This object represents a file ready to be downloaded. The file can be downloaded via the link <code>https://api.telegram.org/file/bot&lt;token&gt;/&lt;file_path&gt;</code>. It is guaranteed that the link will be valid for at least 1 hour. When the link expires, a new one can be requested by calling getFile.
        #
        # Maximum file size to download is 20 MB
        #
        # @!attribute [rw] file_id
        #   @return [String] Unique identifier for this file
        # @!attribute [rw] file_size
        #   @return [Integer] _Optional_. File size, if known
        # @!attribute [rw] file_path
        #   @return [String] _Optional_. File path. Use <code>https://api.telegram.org/file/bot&lt;token&gt;/&lt;file_path&gt;</code> to get the file.
        File = Struct.new(:file_id, :file_size, :file_path) do
          def initialize(file_id:, file_size: nil, file_path: nil)
            super(file_id, file_size, file_path)
          end
        end
      end
    end
  end
end
