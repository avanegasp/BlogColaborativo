module PostsHelper

	def form_title
		@post.new_record? ? "Publicar post" : "Editar producto"
	end
end
