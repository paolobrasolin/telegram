require 'minitest/autorun'

require 'net/http'

require 'json'

require 'minitest/reporters'
Minitest::Reporters.use! Minitest::Reporters::DefaultReporter.new

# class NgrokTest < Minitest::Test
#   def test_does_it_grok
#   end
# end

print "Starting ngrok..."

pid = spawn(
  "~/ngrok http 80 --log stdout",
  out: ['ngrok.out.log', 'w'],
  err: ['ngrok.err.log', 'w']
)

puts " Ok."

class NoTunnelsYet < StandardError; end

print "Waiting for tunnel..."

begin
  result = Net::HTTP.get URI('http://127.0.0.1:4040/api/tunnels')
  raise NoTunnelsYet if JSON.parse(result)['tunnels'].empty?
rescue Errno::ECONNREFUSED
  print '.'
  sleep(0.1)
  retry
rescue NoTunnelsYet
  print '.'
  sleep(0.1)
  retry
end

puts " Ok."
