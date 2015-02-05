class ApplicationController < ActionController::Base
	protect_from_forgery

	helper_method :format_diff_line

	def format_diff_line line, i
	  	case line
		when /^\+/ 
			@output += "<li class='ins'><div class='pull-left'><del><span class='symbol'>" + (i+1).to_s + "</span>" + line.chomp + "</del></div></li>"
		when /^-/ 
			@output += "<li class='del'><div class='pull-left'><ins><span class='symbol'>" + (i+1).to_s + "</span>" + line.chomp + "</ins></div></li>"
		else
			@output += "<li class='unchanged'><div class='pull-left'><span><span class='symbol'>" + (i+1).to_s + "</span>" + line.chomp + "</span></div></li>"
		end
	end
end
