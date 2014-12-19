class Exceptions::Unauthorized < Exceptions::Base
	attr_accessor :status

	def initialize
	end

	# for standard errors this method build a hash
	# @return [String] json string
	def error
		{ 
			error: { 
				message: I18n.t("session.not_authorized")
			} 
		}
	end

	# return the error message
	# @return [String]
	def message
		self.object[:message]
	end

	# return the error status
	def status
		:unauthorized
	end

end