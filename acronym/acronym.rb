class Acronym
	def self.abbreviate arg
		str = []
		arg2 = arg.chars

		str << arg[0]
		arg2.each_with_index do |i, index|
			if i == " "
				str << arg2[index + 1]
			end
		end
		return str.join
	end
end

puts Acronym.abbreviate("Monkey Tits Butt")