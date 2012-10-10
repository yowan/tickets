module ApplicationHelper
	def flash_messages
  		messages = [:error, :notice, :warning].map do |key|
   			if flash.keys.include? key
      			content_tag :p, :id => key.to_s do
        			"#{key}: #{flash[key]}"
      			end
    		end
  		end
  		messages.join.html_safe
	end
end
