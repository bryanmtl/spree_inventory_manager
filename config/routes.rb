# Put your extension routes here.

map.namespace :admin do |admin|
  admin.inventory 'inventory', :controller => 'inventory', :action => 'index'
end