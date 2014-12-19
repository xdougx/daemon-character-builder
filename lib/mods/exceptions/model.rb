class Exceptions::Model < Exceptions::Base

	# for model errors this method build a hash with all necessary information
	# @return [String] json string
	def error
		if self.is_nested?
			{ 
				error: { 
					model: self.nested_model.camelcase, 
					field: "#{self.nested_model}[#{self.nested_attr}]",
					attribute: self.nested_attr, 
					message: self.message,
					full_message: "#{self.nested_attr_human} #{self.message}"
				} 
			}
		else
			{ 
				error: { 
					model: self.model.camelcase, 
					field: "#{self.model}[#{self.attribute}]",
					attribute: self.attribute, 
					message: self.message,
					full_message: "#{self.attribute_human} #{self.message}"
				} 
			}
		end
	end

	# return what model is
	# @return [String]
	def model
		self.object.class.name.demodulize.tableize.singularize.downcase
	end

	def attribute
		self.object.errors.first[0]
	end

	def model_human
		self.object.class.model_name.human.demodulize.tableize.singularize.downcase
	end

	def attribute_human
		self.object.class.human_attribute_name(self.object.errors.first[0])
	end

	# return the error message
	# @return [String]
	def message 
		"#{self.object.errors.first[1]}"
	end

	def status
		:unprocessable_entity
	end

	def is_nested?
		attribute = self.object.errors.first[0]

		if self.object.errors.first[0].to_s.split(".").size > 1
			self.object.respond_to?(attribute) ? false : true
		else
			false
		end
	end

	def nested_model
		self.object.errors.first[0].to_s.split(".").first.singularize.downcase
	end

	def nested_model_human
		self.nested_model.capitalize.constantize.model_name.human
	end

	def nested_attr
		self.object.errors.first[0].to_s.split(".").last
	end

	def nested_attr_human
		self.nested_model.capitalize.constantize.human_attribute_name(self.nested_attr)
	end


end