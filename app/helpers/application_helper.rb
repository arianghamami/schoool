module ApplicationHelper

	def error_messages_for(object)
		render(:partial => 'application/error_messages', :locals => {:object => object})
	end

	def sortable(column, title = nil)
		direction = column == params[:sort] && params[:direction] == "asc" ? "desc" : "asc"
		link_to title, :sort => column, :direction => direction
	end
end
