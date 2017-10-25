class InputSessionsController < ApplicationController
	def show
		@input_session_id = InputSession.latest.id
		@current_inputs = current_session.inputs
	end

	def update
		current_session.increment_input_count(params[:input])
		InputSession.latest.broadcast
	end

	def index
		@recent_highest_responses = InputSession.past_x_most_requested(params[:amount].to_i)
	end
end
