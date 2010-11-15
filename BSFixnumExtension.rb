module BSFixnumExtension
	def respond_to?(aMethodName)
		methods.include? aMethodName
	end
	
	def nan?
		false
	end
end

class Fixnum
  include BSFixnumExtension
end