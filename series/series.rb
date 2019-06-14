class Series
	attr_reader :digits
	def initialize num_str
		@nums = num_str.chars
	end

	def slices length
		if length > @nums.length
			raise ArgumentError
		else
			digits = @nums.each_cons(length).map(&:join)
			return digits
		end
	end
end

s = Series.new('01234')
p s.slices(3)