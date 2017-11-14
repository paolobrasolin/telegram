# frozen_string_literal: true

# frozen_string_literal: true

Gem.
  find_files(File.join('telegram', 'api', 'bot', 'types', '*.rb')).
  each { |path| require path }

module Telegram
  module API
    module Bot
      module Types
        refine Struct do
          def to_h
            members.zip(values.map { |m| m.is_a?(Struct) ? m.to_h : m }).to_h
          end
        end
      end
    end
  end
end
