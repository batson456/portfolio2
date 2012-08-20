class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
    end

    Category.create(name: "PHP")
    Category.create(name: "Ruby on Rails")
    Category.create(name: "Web Design")
    Category.create(name: "Javascript")
  end
end
