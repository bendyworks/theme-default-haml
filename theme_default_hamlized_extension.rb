class ThemeDefaultHamlizedExtension < Spree::Extension
  version "0.0.1"
  description "Spree Theme Default converted to use HAML and SASS"
  url "http://github.com/bendyworks/spree-hamlized"

  def self.require_gems(config)
    config.gem 'compass', :version => '>= 0.8.17'
    config.gem 'haml', :version => '>=2.2.16'
  end
  
  def activate
    # make your helper avaliable in all views
    Spree::BaseController.class_eval do
    #   helper YourHelper
    end
  end
end
