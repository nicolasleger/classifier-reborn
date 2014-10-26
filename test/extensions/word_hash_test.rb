require File.dirname(__FILE__) + '/../test_helper'
class StringExtensionsTest < Test::Unit::TestCase
	def test_word_hash
		hash = {:good=>1, :"!"=>1, :hope=>1, :"'"=>1, :"."=>1, :love=>1, :word=>1, :them=>1, :test=>1}
		assert_equal hash, Hasher.word_hash("here are some good words of test's. I hope you love them!")
	end


	def test_clean_word_hash
	   hash = {:good=>1, :word=>1, :hope=>1, :love=>1, :them=>1, :test=>1}
	   assert_equal hash, Hasher.clean_word_hash("here are some good words of test's. I hope you love them!")
	end

end
