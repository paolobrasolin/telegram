require 'minitest/autorun'

require 'minitest/reporters'
Minitest::Reporters.use! Minitest::Reporters::DefaultReporter.new

require_relative 'test_runner_bot_token'
require_relative '../lib/telegram'

TEST_RUNNER_BOT = Telegram::Bot.new token: TEST_RUNNER_BOT_TOKEN

class GetMeTest < Minitest::Test
  def test_get_me
    response = TEST_RUNNER_BOT.get_me

    assert_equal response.ok, true
    assert_equal response.result.to_h,
                 id: 466_344_525,
                 is_bot: true,
                 first_name: 'Test Runner Bot',
                 last_name: nil,
                 username: 'test_runner_bot',
                 language_code: nil
  end
end
