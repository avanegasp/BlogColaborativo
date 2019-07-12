module PostsHelper

	def form_title
		@post.new_record? ? "Publica tu post" : "Edita tu post"
	end

	def time(post)
		timeNow = Time.now.strftime("%d/%m/%Y %H:%M")
		timeCreated = post.created_at
		diff = timeNow.to_time.to_i - timeCreated.to_time.to_i
		if diff<3600
			time = diff/60
			"Se posteó hace #{time} mínutos"
		elsif diff < 86400
			time = diff/3600
			"Se posteó hace #{time} horas"
		else
			time = diff/(3600*24)
			"Se posteó hace #{time} días"
		end
	end
end
