class NoProfanity
    def self.check(word)
    	# checks the inputted word, to see if it matches with any of these
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
    # converts the word to lowercase to avoid capital letters ignoring the program
	new_word = word.downcase

	# Uses gsub to loop through each forbidden word to check if there's a match	
	banned_words.each do |profanity, clean|
	  new_word.gsub!(profanity, clean)
	end

	# sets and returns the new word
	puts new_word
	return new_word
    end
end
