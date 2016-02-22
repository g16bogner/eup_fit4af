module EventsHelper
	def image_for(event)
		if event.image_file.blank?
			image_tag("dummy.jpg", size: "200x200")
		else
			image_tag(event.image_file, height: "400")
		end
	end
end
