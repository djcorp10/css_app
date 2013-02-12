module NewsHelper
	def make_table
		out = "<table class=\"table table-striped table-bordered\"><thead>"
		out << "<tr><th>Description</th><th>Points</th></tr></thead>"

		Requirement.find_each do |r|
			description = r.description
			points = r.points

			out << "<tr><td>#{description}</td><td>#{points}</td></tr>"
		end

		out << "</table>"
		out.html_safe
	end
end
