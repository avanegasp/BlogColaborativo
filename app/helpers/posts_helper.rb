module PostsHelper

	def form_title
		@post.new_record? ? "Publicar post" : "Editar post"
	end

	def new_method
		2+2
	end
end
