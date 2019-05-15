class HighScores
	def initialize scores
		@scores = scores
	end

	def scores
		return @scores
	end

	def latest
		return @scores.last
	end

	def personal_best
		return @scores.max
	end

	def personal_top_three
		result = []
		sorty = @scores.sort { |a,b| b <=> a }

		sorty.each_with_index { |i,index| result.push(sorty[index]) if index < 3 }
		return result
	end
end

#HighScores.new([10, 30, 90, 30, 100, 20, 10, 0, 30, 40, 40, 70, 70]).personal_top_three