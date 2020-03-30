class NoProfanity
    def self.check(word)
        banned_words = {
	    'darn' => '****',
	    'hell' => '****',
	    'heck' => '****',
            'hate' => '****',
	    'simp' => '****',
            'noob' => '****',
            'feeder' => '******',
            'bad' => '***',
        }
	new_word = word.downcase	
	banned_words.each do |profanity, clean|
	   word.gsub(profanity, clean)
	end
	puts new_word
	return new_word
    end
end
