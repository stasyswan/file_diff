class ApplicationController < ActionController::Base
	protect_from_forgery

	helper_method :format_diff_line

	def format_diff_line line, i
	  	case line
		when /^\+/ 
			@output += "<li class='ins'><del><span class='symbol'>" + (i+1).to_s + "</span>" + line.chomp + "</del></li>"
		when /^-/ 
			@output += "<li class='del'><ins><span class='symbol'>" + (i+1).to_s + "</span>" + line.chomp + "</ins></li>"
		else
			@output += "<li class='unchanged'><span><span class='symbol'>" + (i+1).to_s + "</span>" + line.chomp + "</span></li>"
		end
	end
end
