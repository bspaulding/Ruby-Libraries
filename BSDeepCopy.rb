# DeepCopy
# Author: Bradley J. Spaulding
# Created On: 2010-10-25
# Updated On: 2010-12-10
# 
# IMPORTANT NOTE. dup and clone *ARE NOT THE SAME*. 
# This module needs to be updated to mirror the correct behaviors of each.

module BSDeepCopy
  #alias :dup_deep, :clone_deep
	def dup_deep
		Marshal.load(Marshal.dump(self))
	end
	
	def clone_deep
	  dup_deep
  end
end

class Object
  include BSDeepCopy
end

# DEMO
# hash = { :array => [1, 2, 3, 4, 5] }
# 
# hash2 = hash.clone_deep
# 
# hash[:array][0] = 800
# 
# puts "Hash 1: #{hash}"
# puts "Hash 2: #{hash2}"