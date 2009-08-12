class Admin::InventoryController < Admin::BaseController 
  helper 'yellowbird'
  def index
    @inventory = Product.active.find(:all, :order => 'name')
  end
  
  def update
    inventory = params[:variants]
    
    inventory.each do |which_variant, new_amount|
      variant = Variant.find(which_variant)
      variant.on_hand = new_amount.first
      variant.save
    end
    
    skus = params[:variant_skus]
    
    skus.each do |which_variant, new_sku|
      variant = Variant.find(which_variant)
      variant.sku = new_sku.first
      variant.save
    end
      
    flash[:notice] = "Successfully Updated..." 
    
    redirect_to :controller => 'inventory', :action => 'index' 
    
  end
  
  
  
end
