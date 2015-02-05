class FileDiffController < ApplicationController
	def index
		@new_files = FileDiff.new
		@output = ""
	end

	def find_deffs
		@new_files = FileDiff.new(:doc_current => params[:file_diff][:doc_current], :doc_origin => params[:file_diff][:doc_origin])

		@output = "<div class='diff'><ul>"
		Diffy::Diff.new(
			(PATH_TO_SYSTEM_FOLDER + @new_files.doc_current_file_name), (PATH_TO_SYSTEM_FOLDER + @new_files.doc_origin_file_name), 
			:source => 'files', 
			:include_plus_and_minus_in_html => true)
		.each_with_index{ |line, i| format_diff_line(line, i) } if @new_files.save
		@output += "</div></ul>"
		@new_files.destroy

		render :index
	end
end
