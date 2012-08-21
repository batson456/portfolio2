ActiveAdmin.register Post do
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

        f.input :image, :as => :rich_picker, :config => { :style => 'width: 400px !important;' }

        f.input :categories, :as => :check_boxes, :collection => Category.all.collect { |c| [c.category, c.id]}
      end
      f.inputs "Content" do
        f.input :content, :as => :rich, :config => { :width => '76%', :height => '400px' }
      end
      f.buttons
    end

end
