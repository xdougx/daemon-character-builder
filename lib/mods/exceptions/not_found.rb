class Exceptions::NotFound
	def self.build klass
		Exceptions::Simple.build(
			message: I18n.t("exceptions.#{klass.name.demodulize.pluralize.underscore.downcase}.not_found"),
			field: "#{klass.name.demodulize.underscore}[id]"
		)
	end
end