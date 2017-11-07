Gem
  .find_files(File.join *%w{telegram api bot types *.rb})
  .each { |path| require path }

module Telegram
  module API
    module Bot
      module Types
      end
    end
  end
end
