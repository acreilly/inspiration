module SpreeInspiration
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'spree_inspiration'

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end


initializer "spree.inspiration.preferences", :before => :load_config_initializers do |app|
      Spree::AppConfiguration.class_eval do
        preference :inspiration_summarized, :boolean, default: true
      end
    end
    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/models/**/*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
