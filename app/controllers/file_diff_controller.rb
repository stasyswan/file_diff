class FileDiffController < ApplicationController
	def index
		@new_files = FileDiff.new
	end

	def find_deffs
		@new_files = FileDiff.new(:doc_current => params[:file_diff][:doc_current], :doc_origin => params[:file_diff][:doc_origin])
		@output = Diffy::Diff.new(("public/system/" + @new_files.id.to_s + "/" + @new_files.doc_current_file_name), ("public/system/" + @new_files.id.to_s + "/" + @new_files.doc_origin_file_name), :source => 'files', :include_plus_and_minus_in_html => true).to_s(:html_simple) if @new_files.save

		render :index
	end
end
