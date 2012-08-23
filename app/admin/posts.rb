ActiveAdmin.register Post do

  controller do
    defaults :finder => :find_by_slug
  end
  
  index :as => :blog do
    title :title # Calls #my_title on each resource
    body  do |post|
    	div :class => 'post' do
    		truncate post.content # Calls #my_body on each resource
    	end
    end
  end

  form do |f|
      f.inputs "Details" do
        f.input :title

        f.input :image

        f.input :status, :as => :select, :collection => ['published', 'draft', 'featured', 'archived']

        f.input :categories, :as => :check_boxes, :collection => Category.all.collect { |c| [c.category, c.id]}
      end
      f.inputs "Content" do
        f.input :content, :as => :ckeditor, :input_html => { :height => 400 }
      end
      f.buttons
    end

end
