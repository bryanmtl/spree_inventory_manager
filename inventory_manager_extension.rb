# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class InventoryManagerExtension < Spree::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/inventory_manager"

  # Please use inventory_manager/config/routes.rb instead for extension routes.

  # def self.require_gems(config)
  #   config.gem "gemname-goes-here", :version => '1.2.3'
  # end
  
  def activate
    # admin.tabs.add "Inventory Manager", "/admin/inventory_manager", :after => "Layouts", :visibility => [:all]
  end
end