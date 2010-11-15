# BSTimer
# - A simple task timing class. It allows you to time the execution of any inline block or proc.
# Author: Bradley J. Spaulding
# Created On:	2010-10-11
# Last Updated:	2010-10-19
# 

class BSTimer
	def self.time(num_trials = 1, &block)
		results = []
		num_trials.times do
			start_time = Time.now
			block.call
			end_time = Time.now
			results << (end_time - start_time)
		end
		results.each_with_index {|result, index| puts "#{index+1}) #{result}" }
		sum = results.inject(0) {|total, n| total += n}
		puts "Mean: #{sum/results.size}" 
	end
end