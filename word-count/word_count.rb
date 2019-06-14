class Phrase
	def initialize str
		@@words = str.scan(/\b[\w']+\b/)
	end

	def word_count
		@@word_hash = @@words.each_with_object(Hash.new(0)) {|word, hash| hash[word.downcase] += 1 }
		return @@word_hash
	end
end

Phrase.new("What do it do timmy")