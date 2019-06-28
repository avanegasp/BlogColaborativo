class AddThemeToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :theme, foreign_key: true
  end
end
