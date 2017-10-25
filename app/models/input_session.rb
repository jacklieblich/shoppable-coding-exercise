class InputSession < ApplicationRecord
	scope :latest, -> { order("created_at").last }

	def self.next_session
		if latest.set_most_requested
			CurrentSession.first.clear_inputs
			InputSession.create
			latest.broadcast
		end
	end

	def set_most_requested
		if most_requested = CurrentSession.first.most_requested
			InputSession.latest.update(most_requested: most_requested)
		else
			false
		end
	end

	def broadcast
		ActionCable.server.broadcast 'input_sessions',
		input_session_id: self.id,
		current_inputs: CurrentSession.first.inputs
	end

	def self.past_x_most_requested(x)
		order("created_at").last(x+1).slice(0..-2).map{ |s| s.most_requested }.reverse
	end
end
