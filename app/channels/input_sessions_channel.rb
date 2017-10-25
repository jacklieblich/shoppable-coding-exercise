class InputSessionsChannel < ApplicationCable::Channel  
	def subscribed
		stream_from 'input_sessions'
	end
end  