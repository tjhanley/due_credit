module DueCredit
  class Engine < Rails::Engine

    initializer "due_credit.load_app_instance_data" do |app|
      DueCredit.setup do |config|
        config.app_root = app.root
      end
    end

    initializer "due_credit.load_static_assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end

  end
end