module Telegram
  module Bot
    module Methods
      # Use this method to get basic info about a file and prepare it for downloading. For the moment, bots can download files of up to 20MB in size. On success, a File object is returned. The file can then be downloaded via the link <code>https://api.telegram.org/file/bot&lt;token&gt;/&lt;file_path&gt;</code>, where <code>&lt;file_path&gt;</code> is taken from the response. It is guaranteed that the link will be valid for at least 1 hour. When the link expires, a new one can be requested by calling getFile again.
      #
      # *Note:* This function may not preserve the original file name and MIME type. You should save the file's MIME type and name (if available) when the File object is received.
      #
      # @param file_id [String] File identifier to get info about
      def self.get_file(
        file_id:
      )
      end
    end
  end
end
