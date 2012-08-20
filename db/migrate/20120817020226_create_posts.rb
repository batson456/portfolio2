class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content

      t.timestamps
    end

    Post.create(title: "Example Title 1", content: "Some basic example content")
    Post.create(title: "Example Title 2", content: "Some more basic example content")
  end
end
