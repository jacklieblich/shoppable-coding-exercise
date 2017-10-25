class CurrentSession < ApplicationRecord

	def increment_input_count(type)
		inputs[type] = inputs[type].to_i + 1 if inputs.has_key?(type)
		save
	end

	def most_requested
		most_requested = inputs.max_by{|k,v| v.to_i }[0]
		inputs[most_requested].to_i > 0 ? most_requested : false
	end

	def clear_inputs
		inputs.each do |k, v|
			inputs[k] = 0
		end
		save
	end
end
