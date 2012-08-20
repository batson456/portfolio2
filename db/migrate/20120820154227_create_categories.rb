class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :category

    end

    Category.create(category: "PHP")
    Category.create(category: "HTML")
    Category.create(category: "CSS")
    Category.create(category: "Javascript")
    Category.create(category: "Ruby on Rails")
    Category.create(category: "Personal")
  end
end
