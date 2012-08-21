require 'paperclip'
require 'rack/raw_upload'
require "rich/authorize"
    
module Rich
  class Engine < Rails::Engine
    isolate_namespace Rich

    initializer "rich.add_middleware" do |app|
      app.config.assets.precompile += %w(rich/base.js rich/editor.css rich/rich_editor.css)
      app.middleware.use 'Rack::RawUpload', :paths => ['/rich/files']
    end

    initializer 'rich.include_authorization' do |app|
      ActiveSupport.on_load(:action_controller) do
        include Rich::Authorize
      end
    end


  end
end
