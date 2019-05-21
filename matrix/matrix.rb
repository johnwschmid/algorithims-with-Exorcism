class Matrix
	attr_reader :rows
	attr_reader :columns

	def initialize matrix_str
		@rows = matrix_str.split("\n").map { |e| e.split.map(&:to_i) }
		@columns = @rows.transpose
	end
end