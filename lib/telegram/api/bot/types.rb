# frozen_string_literal: true

Gem.
  find_files(File.join('telegram', 'api', 'bot', 'types', '*.rb')).
  each { |path| require path }

module Telegram
  module API
    module Bot
      module Types
      end
    end
  end
end
