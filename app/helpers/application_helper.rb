module ApplicationHelper

	def apptitle
		apptitle = "Great American Something"
	end
	
	# Return a title on a per-page basis. 
	def title
		base_title = "Great American Something" 
		if @title.nil?
			base_title
		else
			"#{base_title} - #{@title}" 
		end
	end 
end