class Main::Models::ModelQuery < Neo::Database::ModelQuery
	def with_name(name)
		self.add_where([%w[name = {name}]]).add_parameters name: name
	end

	def with_property(property_name)
		self.add_match('p','Property', {name: property_name}, '<-[:HasProperty]-n')
	end
end