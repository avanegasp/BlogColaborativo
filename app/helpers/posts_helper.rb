module PostsHelper

	def form_title
		@post.new_record? ? "Publicar post" : "Editar post"
	end
end
