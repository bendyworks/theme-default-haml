class ThemeDefaultHamlizedExtension < Spree::Extension
  version "0.0.1"
  description "Spree Theme Default converted to use HAML and SASS"
  url "http://github.com/bendyworks/spree-hamlized"

  def self.require_gems(config)
    # HAML should be loaded in the extension, but it appears to load haml-edge
    # TODO: Figure out why haml-edge is loaded, and remove haml declaration from spree root
    # config.gem 'haml', :version => '2.2.8'
    config.gem 'compass', :version => '0.8.17'
  end
  
  def activate
    # make your helper avaliable in all views
    Spree::BaseController.class_eval do
    #   helper YourHelper
    end
  end
end
