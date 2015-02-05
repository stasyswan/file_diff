class ApplicationController < ActionController::Base
	protect_from_forgery

	helper_method :format_diff_line

	def format_diff_line line, i
	  	case line
		when /^\+/ 
			@output += "<tr class='ins'><ins><td class='symbol'>" + (i+1).to_s + "</td><td>" + line.chomp + "</td></ins></tr>"
		when /^-/ 
			@output += "<tr class='del'><ins><td class='symbol'>" + (i+1).to_s + "</td><td>" + line.chomp + "</td></del></tr>"
		else
			@output += "<tr class='unchanged'><td><span class='symbol'>" + (i+1).to_s + "</td><td>" + line.chomp + "</td></tr>"
		end
	end
end
