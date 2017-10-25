class CurrentSession < ApplicationRecord

	def increment_input_count(type)
		inputs[type] = inputs[type].to_i + 1 if inputs.has_key?(type)
		save
	end

	def most_requested
		most_requested_arr = inputs.group_by{|k,v| v.to_i }.max
		most_requested_arr[0] > 0 ? most_requested_arr.last.map{ |a| a[0]}.join(" & ") : false
	end

	def clear_inputs
		inputs.each do |k, v|
			inputs[k] = 0
		end
		save
	end
end
