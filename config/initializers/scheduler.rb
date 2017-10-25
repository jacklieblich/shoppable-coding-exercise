require 'rufus-scheduler'

s = Rufus::Scheduler.singleton

s.every '10s' do
	InputSession.next_session
end