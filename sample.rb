require 'slack-notifier'
require 'clockwork'
# You will be able to use a method to indicate time, such as minutes, if you require the gem below, so it is recommended to write it.
require 'active_support/time'
module Clockwork
 handler do |send|
   notifier = Slack::Notifier.new('https://hooks.slack.com/services/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')
   notifier.ping('Hi, there!!!!!')
 end
 every(3.minutes, 'send')
end