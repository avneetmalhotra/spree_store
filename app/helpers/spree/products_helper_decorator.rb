Spree::ProductsHelper.module_eval do
  def publishing_status(product)
    if product.publishable?
      'Yes'
    else
      'No'
    end
  end
end
